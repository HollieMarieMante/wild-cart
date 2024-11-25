<head>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const dropdown = document.querySelector('.dropdown');
            const summary = dropdown.querySelector('summary');

            document.addEventListener('click', (event) => {
                const isClickInside = dropdown.contains(event.target);

                if (!isClickInside) {
                    dropdown.removeAttribute('open'); // Close the dropdown
                }
            });

            summary.addEventListener('click', (event) => {
                // Prevent closing the dropdown when summary is clicked again
                event.stopPropagation();
            });
        });
    </script>

<style>
    /* Custom styles for dropdown */
    .dropdown summary::-webkit-details-marker {
        display: none;
    }
    
    .dropdown[open] .dropdown-content {
        animation: slideDown 0.2s ease-out;
    }
    
    @keyframes slideDown {
        from { opacity: 0; transform: translateY(-10px); }
        to { opacity: 1; transform: translateY(0); }
    }

    /* Ensure dropdown stays on top */
    .dropdown {
        position: relative;
        z-index: 9999;
    }
    
    .dropdown-content {
        position: absolute;
        right: 0;
    }
</style>
</head>

<header class="w-full h-20">
    <div class="bg-[#AD4646] w-full flex justify-between items-center h-full px-10">
        <details class="dropdown">
            <summary class="btn m-1 bg-transparent hover:bg-transparent border-none hover:border-none shadow-none flex items-center cursor-pointer">
                <svg width="30" height="30" viewBox="0 0 45 45" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M22.5 7.5C14.2157 7.5 7.5 14.2157 7.5 22.5C7.5 26.4358 9.01511 30.0185 11.4975 32.6958C11.5912 32.3857 11.7159 32.0811 11.8785 31.7904C12.4297 30.8048 13.1251 29.8934 13.9502 29.0876C14.7782 28.2788 15.7124 27.6001 16.72 27.0639C15.1854 25.5949 14.2259 23.5418 14.2259 21.25C14.2259 16.7213 17.9723 13.125 22.5 13.125C27.0277 13.125 30.7741 16.7213 30.7741 21.25C30.7741 23.5418 29.8146 25.5949 28.28 27.0639C29.2876 27.6001 30.2218 28.2788 31.0498 29.0876C31.8749 29.8934 32.5703 30.8048 33.1215 31.7904C33.2841 32.0811 33.4088 32.3857 33.5025 32.6958C35.9849 30.0185 37.5 26.4358 37.5 22.5C37.5 14.2157 30.7843 7.5 22.5 7.5ZM29.8896 35.5569C29.9624 35.1824 29.9989 34.8308 30 34.5193C30.0018 34.0046 29.9075 33.7261 29.8487 33.6209C29.4726 32.9486 28.9969 32.3243 28.4296 31.7703C26.8644 30.2415 24.7322 29.375 22.5 29.375C20.2678 29.375 18.1356 30.2415 16.5704 31.7703C16.0031 32.3243 15.5274 32.9486 15.1513 33.6209C15.0925 33.7261 14.9982 34.0046 15 34.5193C15.0011 34.8308 15.0376 35.1824 15.1104 35.5569C17.2903 36.7937 19.8103 37.5 22.5 37.5C25.1897 37.5 27.7097 36.7937 29.8896 35.5569ZM22.5 25.625C25.0405 25.625 27.0241 23.6248 27.0241 21.25C27.0241 18.8752 25.0405 16.875 22.5 16.875C19.9595 16.875 17.9759 18.8752 17.9759 21.25C17.9759 23.6248 19.9595 25.625 22.5 25.625ZM3.75 22.5C3.75 12.1447 12.1447 3.75 22.5 3.75C32.8553 3.75 41.25 12.1447 41.25 22.5C41.25 29.1699 37.766 35.0247 32.5275 38.3459C29.6263 40.1853 26.1846 41.25 22.5 41.25C18.8154 41.25 15.3737 40.1853 12.4725 38.3459C7.234 35.0247 3.75 29.1699 3.75 22.5Z" fill="#F2E8C6"/>
                </svg>  
                <p class="text-[#F2E8C6] text-base ml-2">Hollie Marie Mante</p>
            </summary>
            <ul class="menu dropdown-content bg-white rounded-md w-52 shadow-lg cursor-pointer">
                <li class="hover:bg-slate-200 first:rounded-t-md">
                    <a class="block px-5 py-3 text-black text-sm">Profile</a>
                </li>
                <hr class="border-gray-200"/>
                <li class="hover:bg-slate-200 last:rounded-b-md">
                    <a class="block px-5 py-3 text-red-600 text-sm font-bold">Logout</a>
                </li>
            </ul>
          </details>
          <a href="/cart"><button class="btn bg-transparent border-[#F2E8C6] text-[#F2E8C6] hover:text-black hover:bg-opacity-10 hover:border-[#F2E8C6] rounded-3xl px-5">My Cart</button></a>
    </div>
</header>