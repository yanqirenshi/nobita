<app-modals>

    <app-modals-add-gxan          if={isShow('add-gxan')}></app-modals-add-gxan>
    <app-modals-add-4neo          if={isShow('add-4neo')}></app-modals-add-4neo>
    <app-modals-add-nobita        if={isShow('add-nobita')}></app-modals-add-nobita>
    <app-modals-add-friendship    if={isShow('add-friendship')}></app-modals-add-friendship>
    <app-modal-select-cl-package  if={isShow('select-cl-package')}></app-modal-select-cl-package>
    <app-modal-select-cl-operator if={isShow('select-cl-operator')}></app-modal-select-cl-operator>

    <script>
     this.isShow = (key) => {
         return this.opts.source[key] ? true : false;
     };
    </script>

</app-modals>
