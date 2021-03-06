
struct DetailView: View {
    var notes = ["note1","note2"]

    var body: some View {
        List(notes, id:\.self) { noteName in
            Image(systemName: "note")
            Text(noteName)
        
        }
    }
}
----------------------------------------------
// as I understand.
1. var notes = ["note1","note2"] means,
// - Declare variable named 'notes', this variable has an array contains 'note1' and 'note2'

 2. List(notes, id:\.self) { noteName in
            Image(systemName: "note")
           Text(noteName)
            
//  - print List which has value 'notes' and each element's id is itself.
// - And this casee, the returned value is defined as 'noteName'
// - At same time, when returned 'noteName' it's contain some elements behind 'in'.
// - Those are an Image that named 'note' and text that noteName's value.
