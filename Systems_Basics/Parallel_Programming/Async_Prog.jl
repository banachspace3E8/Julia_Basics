#Shishir Khanal
#01/20/2022
#Asynchronous Programming in Julia
#---------------------------------
t1 = @task begin
    println("Beginning task t1")
    sleep(3)
    println("finished task t1")
end

t2 = Task( () ->
    begin
        println("beginning task t2")
        sleep(3)
        println("finished task t2")
    end
)

istaskstarted(t1)
istaskdone(t1)

schedule(t1);

schedule(t2); wait(t2)

istaskstarted(t1)
istaskdone(t1)


urllist = ["https://www.google.com", "https://www.yahoo.com",
            "https://www.facebook.com", "https://docs.julialang.org/",
            "https://www.udemy.com", "https://www.coursera.org/"]

#download urls without using async macro
@time for url ∈ urllist
    download(url)
end

#using async macro
@time @sync for url ∈ urllist
    @async download(url)
end
#output of a function can be an input for another
#If we use functions we should wait for the function until end

#Use channel with dealing with functions
function inputTask(ch::Channel)
    for i ∈ 1:5
        put!(ch, i^2)
    end
end

chn1 = Channel(inputTask)

take!(chn1)
take!(chn1)
take!(chn1)
take!(chn1)
take!(chn1)
take!(chn1)


for i in Channel(inputTask)
    @show i
end