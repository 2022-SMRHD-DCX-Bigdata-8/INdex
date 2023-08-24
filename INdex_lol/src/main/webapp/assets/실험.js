for (var i = 1; i <= 20; i++) {
  var expandableButtons = document.querySelectorAll('.lastQue.animated-item'+i);

  expandableButtons.forEach(function (button) {
      var expandableContent = button.querySelector('.expandable-content');

      button.addEventListener('click', function (event) {
          expandableContent.classList.toggle('expanded');
          event.stopPropagation(); // 이벤트 전파 중지

          if (expandableContent.classList.contains('expanded')) {
              // 확장된 컨텐츠가 나타날 때
              var spaceElement = document.createElement('div');
              spaceElement.classList.add('expandable-space');
              button.parentNode.insertBefore(spaceElement, button.nextSibling);
          } else {
              // 확장된 컨텐츠가 사라질 때
              var spaceElement = button.nextElementSibling;
              if (spaceElement && spaceElement.classList.contains('expandable-space')) {
                  spaceElement.remove();
              }
          }
      });
  });
};