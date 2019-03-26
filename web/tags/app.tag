<app>
    <github-link fill="#BDB04F" color="#fff"
                 href="https://gitlab.com/yanqirenshi/nobita"></github-link>

    <menu-bar brand={{label:'N'}} site={site()} moves={[]}></menu-bar>

    <app-page-area></app-page-area>

    <script>
     this.site = () => {
         return STORE.state().get('site');
     };
     this.updateMenuBar = () => {
         if (this.tags['menu-bar'])
             this.tags['menu-bar'].update();
     }
    </script>


    <script>
     STORE.subscribe((action)=>{
         if (action.type=='MOVE-PAGE') {
             this.updateMenuBar();

             this.tags['app-page-area'].update({ opts: { route: action.route }});
         }
     });

     window.addEventListener('resize', (event) => {
         this.update();
     });

     if (location.hash=='')
         location.hash=STORE.get('site.active_page');

     this.on('mount', () => {
         dump('1-');
         ACTIONS.movePage({ route: [STORE.get('site.active_page')] });
     });
    </script>

    <style>
     app > .page {
         width: 100vw;
         overflow: hidden;
         display: block;
     }
     .hide { display: none; }
    </style>
</app>
