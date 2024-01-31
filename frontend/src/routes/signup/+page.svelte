<script>
    import Footer from "$lib/Footer.svelte";
    import HeaderBasic from "$lib/HeaderBasic.svelte";
    // Import Swiper styles
    import 'swiper/css';
  </script>
  <HeaderBasic/>
  <main class="h-[100svh-80px]">
      <section class="bg-gray-50 ">
          <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
              <a href="/" class="flex items-center mb-6 text-4xl font-bold text-gray-900 ">
                  <img class="w-12 h-12 mr-2" src="/favicon.png" alt="logo">
                  The Loki Project
              </a>
              <div class="w-full bg-white rounded-lg shadow  md:mt-0 sm:max-w-md xl:p-0 ">
                  <div class="p-6 space-y-4 md:space-y-6 sm:p-8 h-[600px] flex flex-col justify-center">
                      <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl ">
                          Create your account
                      </h1>
                      <form class="space-y-4 md:space-y-6" action="#">
                            <div>
                                <label for="name" class="block mb-2 text-sm font-medium text-gray-900 ">Your Name</label>
                                <input type="name" name="name" id="name" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 " placeholder="Juan Dela Cruz" >
                            </div>
                            <div>
                                <label for="email" class="block mb-2 text-sm font-medium text-gray-900 ">Your email</label>
                                <input type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 " placeholder="example@email.com" >
                            </div>
                            <div>
                                <label for="password" class="block mb-2 text-sm font-medium text-gray-900 ">Password</label>
                                <input type="password" name="password" id="password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 ">
                            </div>
                            <div class="flex items-center justify-end">
                                <a href="#" class="text-sm font-medium text-primary-600 hover:underline ">Forgot password?</a>
                            </div>
                            <button type="submit" class="w-full text-white bg-red-500 hover:bg-primary-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center ">Sign up</button>
                            <p class="text-sm font-light text-gray-500 ">
                                Already have an account? <a href="/login" class="font-medium text-primary-600 hover:underline ">Sign In</a>
                            </p>
                      </form>
                  </div>
              </div>
          </div>
      </section>
  </main>
  <Footer/>