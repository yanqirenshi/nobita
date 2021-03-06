<classes-table>

    <table class="table is-bordered is-striped is-narrow is-hoverable">
        <thead>
            <tr>
                <th>Package</th>
                <th>Name</th>
                <th>Parents</th>
                <th>File</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr each={obj in classes()}>
                <td>{obj.package}</td>
                <td><a href={href(obj)}>{obj.name}</a></td>
                <td>{obj.parents}</td>
                <td>{obj.file}</td>
                <td>{obj.description}</td>
            </tr>
        </tbody>
    </table>

    <script>
     let ndoc = new NobitaDoc();

     this.href = (data) => {
         return ndoc.makeDicDataLink (this.opts.linkPrefix, data);
     };

     this.classes = () => {
         let all = STORE.state().get('classes');

         if (this.opts.groups)
             return ndoc.filterDicData(this.opts.groups,
                                       STORE.state().toJS().classes);

         if (this.opts.targets) {

             return all.filter((d) => {
                 return this.opts.targets.find((x) => {
                     return x == d.name;
                 });
             })
         }

         return all;
     };
    </script>

</classes-table>
