const poyopoyo = () => {
  document.querySelector(".square1").animate(
    {
      borderRadius: [
        "20% 40% 40% 60%/40% 40% 60% 50%",
        "70% 20% 40% 40%/40% 50% 20% 60%",
        "30% 30% 40% 30%/20% 40% 30% 70%"
      ]
    },
    {
      iterations: Infinity,
      direction: "alternate",
      duration: 7000
    });

    document.querySelector(".squ1-1").animate(
      {
        borderRadius: [
          "40% 40% 50% 40%/30% 50% 40% 80%",
          "30% 50% 50% 70%/50% 50% 70% 60%",
          "80% 30% 50% 50%/50% 60% 30% 70%"
        ]
      },
      {
        iterations: Infinity,
        direction: "alternate",
        duration: 7000
      });
  
  
  document.querySelector(".square2").animate(
    {
      borderRadius: [
        "80% 30% 50% 50%/50%",
        "50% 50% 50% 70%/50% 50% 70% 60%",
        "40% 40% 50% 40%/30% 50% 40% 80%"
      ]
    },
    {
      iterations: Infinity,
      direction: "alternate",
      duration: 7000
    });

    document.querySelector(".squ2-1").animate(
      {
        borderRadius: [
          "40% 40% 50% 40%/30% 50% 40% 80%",
          "30% 50% 50% 70%/50% 50% 70% 60%",
          "80% 30% 50% 50%/50% 60% 30% 70%"
        ]
      },
      {
        iterations: Infinity,
        direction: "alternate",
        duration: 7000
      });

  document.querySelector(".square3").animate(
    {
      borderRadius: [
        "50% 50% 50% 70%/50% 50% 70% 60%",
        "40% 40% 50% 40%/30% 50% 40% 80%",
        "80% 30% 50% 50%/50%"
      ]
    },
    {
      iterations: Infinity,
      direction: "alternate",
      duration: 7000
    });

    document.querySelector(".squ3-1").animate(
      {
        borderRadius: [
          "40% 40% 50% 40%/30% 50% 40% 80%",
          "80% 30% 50% 50%/50% 60% 30% 70%",
          "30% 50% 50% 70%/50% 50% 70% 60%"
        ]
      },
      {
        iterations: Infinity,
        direction: "alternate",
        duration: 7000
      });

  document.querySelector(".square4").animate(
    {
      borderRadius: [
        "30% 30% 70% 50%/50%",
        "60% 40% 50% 70%/50% 50% 70% 60%",
        "40% 70% 50% 40%/30% 50% 40% 80%"
      ]
    },
    {
      iterations: Infinity,
      direction: "alternate",
      duration: 7000
    });

    document.querySelector(".squ4-1").animate(
      {
        borderRadius: [
          "40% 40% 50% 40%/30% 50% 40% 80%",
          "30% 50% 50% 70%/50% 50% 70% 60%",
          "80% 30% 50% 50%/50% 60% 30% 70%"
        ]
      },
      {
        iterations: Infinity,
        direction: "alternate",
        duration: 7000
      });


  document.querySelector(".square5").animate(
    {
      borderRadius: [
        "60% 30% 70% 80%/50%",
        "50% 70% 80% 40%/50% 50% 70% 60%",
        "40% 40% 50% 40%/30% 50% 40% 80%"
      ]
    },
    {
      iterations: Infinity,
      direction: "alternate",
      duration: 7000
    });

    document.querySelector(".squ5-1").animate(
      {
        borderRadius: [
          "30% 50% 50% 70%/50% 50% 70% 60%",
          "40% 40% 50% 40%/30% 50% 40% 80%",
          "80% 30% 50% 50%/50% 60% 30% 70%"
        ]
      },
      {
        iterations: Infinity,
        direction: "alternate",
        duration: 7000
      });
  };

window.addEventListener("load",poyopoyo);