<script>
  import Footer from "$lib/Footer.svelte";
  import Header from "$lib/Header.svelte";
</script>

<Header />
<main class="min-h-svh text-gray-800">
  <article
    class="container mx-auto min-h-[600px] flex justify-center items-center flex-col px-4 max-w-[1280px] text-center gap-8"
  >
    <h2 class="font-bold text-4xl md:text-5xl lg:text-7xl">
      Master the <span class="text-red-500"
        >basic essentials of web development</span
      > paving your path to digital success.
    </h2>
    <p class="font-medium text-xl">
      Join 100+ developers learning, building, and deploying their dream web
      application.
    </p>
    <div class="flex gap-4">
      <button
        class="px-6 py-2 border-2 border-red-500 bg-red-500 text-white font-medium rounded-full"
        >Get Started</button
      >
      <button class="px-4 py-2 border-2 border-red-500 text-red-500 font-medium"
        >Learn More</button
      >
    </div>
  </article>
  <article
    class="bg-gray-50 mx-auto flex justify-center items-center flex-col px-4 my-20 py-12"
  >
    <h3 class="font-bold text-4xl max-w-[1000px] text-center">
      Learn various languages and frameworks to build your web application.
    </h3>
    <ol class="mt-24 flex flex-wrap gap-4 justify-center items-center">
      <li class="">
        <img src="/RoR.png" class="object-cover h-[100px]" alt="" />
      </li>
      <li class=" h-[100px]">
        <img src="/Django.png" class="object-cover h-[100px]" alt="" />
      </li>
      <li class="h-[100px]">
        <img src="/Express.png" class="object-cover h-[100px]" alt="" />
      </li>
      <li class="h-[100px]">
        <img src="/Laravel.png" class="object-cover h-[100px]" alt="" />
      </li>
      <li class="h-[100px]">
        <img src="/Nest.png" class="object-cover h-[100px]" alt="" />
      </li>
    </ol>
  </article>
  <article class="container mx-auto mt-36">
    <h4 class="text-center font-bold text-4xl">
      Community built by developers around the world
    </h4>
    <p class="text-center mt-8 font-medium text-xl text-gray-500">
      We're here to help you grow your career as a developer.
    </p>
    <div
      class="flex mt-12 max-w-[1000px] mx-auto border-gray-50 bg-gray-50 rounded-xl px-4"
    >
      <section
        class="px-5 py-3 border-r-2 border-white basis-0 flex-1 text-center"
      >
        <p class="text-3xl font-black">24</p>
        <p class="text-xl font-medium mt-1">Courses</p>
      </section>
      <section
        class="px-5 py-3 border-r-2 border-white basis-0 flex-1 text-center"
      >
        <p class="text-3xl font-black">98</p>
        <p class="text-xl font-medium mt-1">Tutorials</p>
      </section>
      <section class="px-5 py-3 basis-0 flex-1 text-center">
        <p class="text-3xl font-black">231</p>
        <p class="text-xl font-medium mt-1">Users</p>
      </section>
    </div>
  </article>
</main>
<Footer />

<style>
</style>
