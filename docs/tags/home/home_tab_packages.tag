<home_tab_packages>

    <section class="section">
        <div class="container">
            <h1 class="title is-4"></h1>
            <h2 class="subtitle"></h2>

            <div class="contents" style="padding-left:0px;">
                <home-wnqi start_id={11}></home-wnqi>
            </div>
        </div>
    </section>

    <script>
     this.wbs_list_options = {
         hide: {
             wbs: {
                 finished: false
             },
             workpackage: {
                 finished: false
             },
         }
     };
     this.data = () => {
         let state = new WNQI().build();
         let options = this.wbs_list_options;

         if (state.projects.list.length==0)
             return [];

         return new Wbs().composeTreeFlat(
             state.wbs.ht[11], //state.projects.list[0],
             state.wbs,
             state.workpackages,
             state.edges,
             options);
     };
    </script>

</home_tab_packages>
