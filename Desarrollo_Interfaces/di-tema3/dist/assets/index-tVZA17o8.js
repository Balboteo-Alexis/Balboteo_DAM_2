(function(){let e=document.createElement(`link`).relList;if(e&&e.supports&&e.supports(`modulepreload`))return;for(let e of document.querySelectorAll(`link[rel="modulepreload"]`))n(e);new MutationObserver(e=>{for(let t of e)if(t.type===`childList`)for(let e of t.addedNodes)e.tagName===`LINK`&&e.rel===`modulepreload`&&n(e)}).observe(document,{childList:!0,subtree:!0});function t(e){let t={};return e.integrity&&(t.integrity=e.integrity),e.referrerPolicy&&(t.referrerPolicy=e.referrerPolicy),t.credentials=e.crossOrigin===`use-credentials`?`include`:e.crossOrigin===`anonymous`?`omit`:`same-origin`,t}function n(e){if(e.ep)return;e.ep=!0;let n=t(e);fetch(e.href,n)}})(),console.log({nombre:`Alexis Balboteo González`,edad:22,carnetConducir:!0}),console.log([{nombre:`Laura`,apellidos:`García López`,nacionalidad:`Española`,annoNacimiento:2005,telefono:`555767431`,correoElectronico:`laura@garcia.com`,modulos:[`Programación`,`Bases de datos`],convalidaIpe:!0,nivelPadel:`Intermedio`,centroProcedencia:`IES Centro Norte`},{nombre:`Pablo`,apellidos:`Martín Ruiz`,nacionalidad:`Española`,annoNacimiento:2004,telefono:`666543210`,correoElectronico:`pablo@gmail.com`,modulos:[`Desarrollo de interfaces`,`Acceso a datos`],convalidaIpe:!1}]),document.documentElement.lang=`es`,document.title=`Alexis Balboteo González · 2º DAM`,document.querySelector(`#app`).innerHTML=`
  <main class="portada">
    <header class="cabecera">
      <span class="marca" aria-label="Alexis Balboteo">AB<span aria-hidden="true">.</span></span>
      <span class="curso">2º DAM</span>
    </header>

    <section class="presentacion" aria-labelledby="nombre">
      <p class="etiqueta">Desarrollo de Interfaces</p>
      <h1 id="nombre">Alexis<br>Balboteo González<span class="punto">.</span></h1>
      <p class="descripcion">
        Aprendiendo a crear interfaces paso a paso, con curiosidad,
        ganas de probar cosas y de mejorar en cada proyecto.
      </p>
      <div class="tecnologias" aria-label="Tecnologías del proyecto">
        <span>HTML</span><span>CSS</span><span>TypeScript</span>
      </div>
    </section>

    <footer class="pie">
      <span>Mi espacio de aprendizaje</span>
      <span class="estado"><span class="indicador" aria-hidden="true"></span>En construcción, como mis ideas</span>
    </footer>
  </main>
`;