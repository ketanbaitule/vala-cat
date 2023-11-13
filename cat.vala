using Gee;

void main(string[] args){
    var lines = new ArrayList<string> ();

    FileStream? file_stream;
    unowned FileStream? stream;

    uint no_of_files = args.length - 1;
    uint file_traversed = 0;

    do{
        if(args.length >= 2){
            file_stream = FileStream.open(args[1 + file_traversed], "r");
            stream = file_stream;
        }else{
            stream = stdin;
        }
        
        string? line = null;
        while ((line = stream.read_line ()) != null) {
            lines.add(line);
        }
        file_traversed++;
    }while(file_traversed < no_of_files);

    foreach(string line in lines){
        stdout.printf("%s\n", line);
    }
}