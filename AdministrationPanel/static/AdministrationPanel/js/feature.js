document.addEventListener('DOMContentLoaded', function() {
    flatpickr("#calendar-container", {
        inline: true,
        locale: 'fr',
        onChange: function(selectedDates, dateStr, instance) {
          const date = selectedDates[0];
          document.getElementById('day').innerText = formatNumber(date.getDate());
          document.getElementById('dayOfWeek').innerText = getDayOfWeekName(date.getDay());
          document.getElementById('month').innerText = getMonthName(date.getMonth());
        },
    });

    function getDayOfWeekName(dayOfWeek) {
        const daysOfWeek = ["Dimanche", "Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi"];
        return daysOfWeek[dayOfWeek];
    }

    function getMonthName(month) {
        const months = ["Janvier", "Février", "Mars", "Avril", "Mai", "Juin", "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Décembre"];
        return months[month];
    }

    function formatNumber(number) {
        return number < 10 ? '0' + number : number;
    }
});
