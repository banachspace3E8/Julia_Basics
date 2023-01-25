#Shishir Khanal
#01/20/2022
#Networking in Julia
#-------------------

using Sockets

server = listen(8000)
conn = accept(server)
line = readline(conn)
write(conn, "Hello Client. How are you?\n")
close(conn)

server = listen(2000)
con = accept(server)
write(con, "Hi, client! What can I do for you?\n")

#Single client at a time
while true
    line = readline(con)
    println("Incoming message >>> $line")
end


using Sockets

server = listen(20001)
while true
    conn = accept(server)
    #Deal with each connection in a different co-routine
    @async begin
        while true
            line = readline(conn)
            println("Incoming Message >>> $line")
        end
    end
end