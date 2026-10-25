import './style.css'
import './topics/di32'
import './topics/di33'
import './topics/di34'
import './topics/di35'
import './topics/di36'
import './topics/di37'
import './topics/di38'
import './topics/di39'


document.documentElement.lang = 'es'
document.title = 'Alexis Balboteo González · 2º DAM'

document.querySelector<HTMLDivElement>('#app')!.innerHTML = `
  <main class="portada">
    <header class="cabecera">
      <span class="marca" aria-label="Alexis Balboteo">Balboteo<span aria-hidden="true">.</span></span>
      <span class="curso">2º DAM</span>
    </header>

    <section class="presentacion" aria-labelledby="nombre">
      <p class="etiqueta">Desarrollo de Interfaces</p>
      <h1 id="nombre">Alexis<br>Balboteo González<span class="punto">.</span></h1>
      <p class="descripcion">
        Aprendiendo a crear interfaces, tengo ganas de probar cosas y de mejorar en cada proyecto.
        Me gustan los dinosaurios.
      </p>
      <div class="tecnologias" aria-label="Tecnologías del proyecto">
        <span>HTML</span><span>CSS</span><span>TypeScript</span>
      </div>
    </section>

    <footer class="pie">
      <span>Aprendiendo</span>
      
    </footer>
  </main>
`
