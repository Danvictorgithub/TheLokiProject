<script>
  import Footer from "$lib/Footer.svelte";
  import Header from "$lib/Header.svelte";
  const mockCourses = [
    {
      id: 1,
      name: "The Odin Project",
    },
    {
      id: 2,
      name: "FreeCodeCamp",
    },
    {
      id: 3,
      name: "Codecademy",
    },
    {
      id: 4,
      name: "Coursera",
    },
    {
      id: 5,
      name: "Udemy",
    },
  ];
</script>

<Header />
<main class="min-h-[calc(100svh-270px)]">
  <section class="container mx-auto px-4 my-12 flex items-center flex-col">
    <h2 class="text-5xl font-bold">
      All <span class="text-red-500">Courses</span>
    </h2>
    <a
      href="https://www.theodinproject.com/"
      class="w-full mt-10 flex justify-center"
    >
      <div
        class="flex flex-col md:flex-row w-full max-w-[1000px] border-2 rounded-2xl overflow-hidden shadow-sm"
      >
        <div
          class="bg-[#CC9543] flex justify-center items-center w-full md:max-w-[300px]"
        >
          <img src="top.png" class="h-60 object-contain" alt="" />
        </div>
        <div class="p-4 w-full">
          <p class="font text-4xl norse text-center md:text-left mt-4 mb-12">
            The Odin Project
          </p>
          <p
            class="pr-4 text-md text-xl md:text-2xl font-md md:text-left text-center"
          >
            Your <span class="text-[#A9792B]"> Career in Web Development </span>
            Starts Here Our full stack curriculum is free and supported by a passionate
            open source community.
          </p>
          <div class="flex justify-between items-center my-4">
            <p class="font-bold">The Odin Project</p>
            <p
              class="font-bold my-4 text-green-600 flex items-center justify-end gap-2"
            >
              <span class="material-symbols-outlined">
                verified
              </span>Recommended
            </p>
          </div>
        </div>
      </div>
    </a>
  </section>
  <section class="">
    <div class="bg-gray-50 py-12">
      <div class="container mx-auto">
        <h3 class="text-center font-bold mb-6 text-3xl">
          Search <span class="text-red-600">Courses</span>
        </h3>
        <div class="relative px-4">
          <input
            type="text"
            class="border-[3px] rounded-md h-12 w-full p-4 font-md border-red-400"
            placeholder="Search..."
          />
          <button class="absolute top-1/4 right-8">
            <span class="material-symbols-outlined"> search </span></button
          >
        </div>
      </div>
    </div>
    <section class="container mx-auto grid grid-cols-auto-fit gap-4 px-4">
      {#each mockCourses as course}
        <article>
          <img src="top.png" alt="" />
          <p>{course.name}</p>
        </article>
      {/each}
    </section>
  </section>
</main>
<Footer />

<style>
  @font-face {
    font-family: "Norse";
    src: url("norse.otf");
    src: url("norse-bold.otf");
  }
  .norse {
    font-family: "Norse";
  }
</style>
