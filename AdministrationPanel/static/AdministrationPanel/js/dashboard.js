/**
 * TABLEAU DE BORD - Statistique
 * Analyse de vente
 */
    var sale = document.getElementById('canvas-sale-overview').getContext('2d')
    
    var saleChart = new Chart(sale, {
        type: 'line', 
        data: {
            labels: ['Lun', 'Mar', 'Mer', 'Jeu', 'Ven', 'Sam', 'Dim'],
            datasets: [{
                label: '# Rapport de vente',
                data: [120, 190, 130, 90, 120, 100, 210], 
                backgroundColor: [
                    'rgba(5, 14, 71, 1)',
                    'rgba(5, 14, 71, 1)',
                    'rgba(5, 14, 71, 1)',
                    'rgba(5, 14, 71, 1)',
                    'rgba(5, 14, 71, 1)',
                    'rgba(5, 14, 71, 1)'
                ],
                borderColor: [
                    'rgba(206, 233, 239, 1)',
                    'rgba(206, 233, 239, 1)',
                    'rgba(206, 233, 239, 1)',
                    'rgba(206, 233, 239, 1)',
                    'rgba(206, 233, 239, 1)',
                    'rgba(206, 233, 239, 1)',
                ],
                borderWidth: 3,
                tension : 0.5, 
            }]
        },
        options: {
            animations: {
                tension: { duration: 500, easing: 'linear', from : 1, to : 0, loop: true },
              },
            scales: {
                x: { 
                    grid: { display: false }
                },
                y: {
                    ticks: {
                        callback: function(value) {
                            if (value == 0) {
                                return value; 
                             }
                             return value + 'k';
                        }
                    },
                    grid: {
                        display: false 
                    },
                    beginAtZero: true, 
                }
            }
        }
    })
/** */

/**
 * Analyse de profit
 */
    var profit = document.getElementById('canvas-profit-overview').getContext('2d');
    
    var profitChart = new Chart(profit, {
        type: 'bar', 
        data: {
            labels:  ['Jan', 'Feb', 'Mar', 'Avr', 'Mai', 'Juin', 'Juil', 'Aout', 'Sept', 'Oct', 'Nov', 'Déc'],
            datasets: [{
                label: '# profit',
                data: [120, 190, 130, 340, 120, 100, 210, 40, 205, 128, 340, 55], 
                backgroundColor: [
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                    'rgba(255, 255, 255, 1)',
                ],
                tension : 0.5, 
            }]
        },
        options: {
            animations: {
                tension: {
                  duration: 500,
                  easing: 'linear',
                  from : 1,
                  to : 0,
                  loop: true
                },
              },
            scales: {
                x: {
                    grid: { display: false }
                },
                y: {
                    ticks: {
                        callback: function(value) {
                            if (value == 0) {
                               return value; 
                            }
                            return value + ' 000';
                        }
                    },
                    grid: { display: false },
                    beginAtZero: true, 
                }
            }
        }
    })


