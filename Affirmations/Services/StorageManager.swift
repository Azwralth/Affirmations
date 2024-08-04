//
//  Affirmations.swift
//  Affirmations
//
//  Created by Владислав Соколов on 31.07.2024.
//


struct Storage {
    static var sampleItems: [Item] = [
        Item(title:"Деньги",image: "pic-1", description: "Хотите улучшить благосостояние? Используйте силу разума! Иногда нужно лишь изменить вектор мышления, чтобы пробить потолок, ограничивающий доходы. И этот потолок ― в вашей голове. Устранить его помогут следующие аффирмации.", affirmation: moneyAffirmations, isFavorite: false),
        Item(title:"Успех",image: "pic-2", description: "Девиз современного человека ― быть успешным, причем в разных сферах: в работе и бизнесе, в любви и отношениях с близкими, в учебе. Произносите самые лучшие аффирмации, заряжающие на успех.", affirmation: luckyAffirmations, isFavorite: false),
        Item(title:"Любовь",image: "pic-3", description: "У кого-то не складываются отношения с супругом, кто-то стесняется познакомиться, кто-то находится в угнетенном состоянии после разрыва.", affirmation: loveAffirmations, isFavorite: false),
        Item(title:"Здоровье",image: "pic-4", description: "То, о чем мы думаем, легко становится реальностью. Аффирмации помогают улучшить состояние здоровья и самочувствие. Позитивные мысли и вера облегчают течение болезни и ускоряют выздоровление. ", affirmation: healthAffirmations, isFavorite: false),
        Item(title:"Каждый день", image: "pic-5", description: "Есть ряд высказываний, которые не относятся к конкретной сфере жизни, но могут зарядить вас энергией и уверенностью.", affirmation: dailyAffirmations, isFavorite: false),
        Item(title:"Для женщин",image: "pic-6", description: "Когда женщина постоянно находится в окружении негатива, испытывает раздражение и тревогу, она теряет красоту и силы. Аффирмации ― верный способ восстановить ресурсы. Каждый день нужно говорить себе следующие аффирмации. ", affirmation: femaleAffirmations, isFavorite: false),
        Item(title: "Для мужчин",image: "pic-7", description: "Аффирмации помогают представителям сильного пола быстро преодолевать внутренние барьеры, которые мешают достигнуть цели. Самые лучшие позитивные высказывания приводим ниже. ", affirmation: maleAffirmations, isFavorite: false),
    ]
    
    static let moneyAffirmations = [
        Affirmation(text: "Деньги текут в мои руки."),
        Affirmation(text: "Мой дом притягивает потоки богатства и изобилия."),
        Affirmation(text: "Я — процветающий человек и использую эту способность, чтобы развиваться духовно."),
        Affirmation(text: "С каждым месяцем мой доход увеличивается."),
        Affirmation(text: "Каждый работодатель был бы счастлив заполучить себе в штат такого специалиста, как я."),
        Affirmation(text: "Мое благосостояние постоянно растет."),
        Affirmation(text: "Я всегда добиваюсь успеха благодаря своим способностям и таланту."),
        Affirmation(text: "У меня стабильный высокий доход, и мне хватает денег, чтобы жить в комфорте."),
        Affirmation(text: "У меня есть свободные средства, которые я откладываю в копилку."),
        Affirmation(text: "Я спокоен (спокойна) за деньги — они есть у меня всегда."),
        Affirmation(text: "Мне легко с каждым месяцем зарабатывать больше."),
        Affirmation(text: "Я живу достойной жизнью, и моего дохода хватает, чтобы удовлетворить все свои потребности."),
        Affirmation(text: "Я уверен(а) в своем будущем — в нем всегда есть деньги."),
        Affirmation(text: "В моей копилке — приличная сумма."),
        Affirmation(text: "Я самостоятельный(ая) и могу полностью обеспечить себя."),
        Affirmation(text: "Любая работа, за которую я берусь, приносит большой доход."),
        Affirmation(text: "Я образован(а) и имею большой опыт, чтобы занять руководящую должность в любой компании."),
        Affirmation(text: "Я креативный(ая), и мои идеи оригинальны и конкурентоспособны."),
        Affirmation(text: "У меня есть четкий план, как увеличить свой доход, и я следую ему."),
        Affirmation(text: "Я обладаю высокой компетентностью в своей профессиональной области."),
        Affirmation(text: "Я легко справляюсь с любым вызовом."),
        Affirmation(text: "Я нахожусь в стабильном финансовом положении, и ничто не может изменить его."),
        Affirmation(text: "Руководителю нравится, как я подхожу к решению задач — он относится ко мне с восхищением и уважением."),
        Affirmation(text: "С каждой заработной платы я могу отложить крупную сумму."),
        Affirmation(text: "Клиентам нравится со мной работать, они постоянно делают заказы и оплачивают их вовремя."),
        Affirmation(text: "Коллеги называют меня умным(ой) и компетентным(ой)."),
        Affirmation(text: "Я легко справляюсь с любыми рабочими задачами — это доставляет мне удовольствие."),
        Affirmation(text: "Деньги любят меня, они стремятся попасть в мои руки."),
        Affirmation(text: "Я знаю, как повысить продажи в 10 раз."),
        Affirmation(text: "Любая трудность мне нипочем — я легко справляюсь с ними и выхожу из ситуации победителем."),
        Affirmation(text: "Я работаю максимально продуктивно, потому что я профессионал своего дела."),
        Affirmation(text: "Инвесторов привлекает мой бизнес, и они хотят сотрудничать со мной."),
        Affirmation(text: "Я могу купить все, что пожелаю — у меня много денег."),
        Affirmation(text: "Мое резюме сильно выделяется на фоне других — я настоящий специалист с большим опытом."),
        Affirmation(text: "Я достойный человек, получающий (сумма) рублей в месяц."),
        Affirmation(text: "Я грамотно распоряжаюсь своими финансами."),
        Affirmation(text: "То, чем я занимаюсь, приносит мне удовлетворение и радость. Мое дело постоянно растет и развивается."),
        Affirmation(text: "Я — человек, добившийся большого успеха и стремящийся к новым высотам."),
        Affirmation(text: "Мои доходы постоянно растут. Денежный поток постоянен."),
        Affirmation(text: "Я знаю, как правильно обращаться с деньгами."),
        Affirmation(text: "Я успешный мужчина (успешная женщина), и уровень достатка это подтверждает."),
        Affirmation(text: "Деньги поступают ко мне из нескольких источников."),
        Affirmation(text: "Я повышаю свой уровень и совершенствуюсь, когда решаю денежные вопросы."),
        Affirmation(text: "Я, словно магнит, притягиваю богатство, и оно приходит ко мне разными путями."),
        Affirmation(text: "Я владею финансовой грамотностью и умею правильно распоряжаться деньгами."),
        Affirmation(text: "Я заслужил(а) получать много денег за свою работу. Это дается мне легко."),
        Affirmation(text: "Я иду по пути, ведущему к большой прибыли."),
        Affirmation(text: "Мой капитал постоянно становится больше. Для его роста нет преград."),
        Affirmation(text: "Мои решения относительно траты денег всегда взвешены."),
        Affirmation(text: "Мне хватает средств для беззаботной жизни."),
        Affirmation(text: "У меня много денег, и я трачу их не только на покупки для себя, но и на благотворительность и помощь окружающим."),
        Affirmation(text: "В мой дом постоянно залетают деньги, и я благодарен (благодарна) Вселенной, что они даются так легко."),
        Affirmation(text: "В моей жизни всегда открыта дверь для богатства и успеха."),
        Affirmation(text: "Сегодня и всегда я чувствую себя счастливым, богатым и здоровым человеком.")
    ]

    static let luckyAffirmations = [
        Affirmation(text: "У меня светлый ум, который понимает, что вокруг много возможностей, чтобы стать успешным."),
        Affirmation(text: "Мои мечты всегда сбываются."),
        Affirmation(text: "У меня хорошая работа, и я люблю свое дело — это путь к успеху, богатству и процветанию."),
        Affirmation(text: "Внутри меня — огромная сила, и ее достаточно, чтобы реализовать все планы."),
        Affirmation(text: "У меня много навыков и способностей, с помощью которых я достигаю высот. Я благодарен (благодарна) Вселенной, что она дала мне их."),
        Affirmation(text: "Вокруг меня — успешные и процветающие люди."),
        Affirmation(text: "Я уверен (уверена), что любое дело мне под силу."),
        Affirmation(text: "Я грамотно распоряжаюсь своим временем и всегда пунктуален (пунктуальна)."),
        Affirmation(text: "Я амбициозный(ая) и всегда добиваюсь целей, которые совпадают с личными ценностями."),
        Affirmation(text: "Я преуспеваю в любом деле и легко справляюсь с каждой задачей, что приносит мне доход и удовольствие."),
        Affirmation(text: "Когда мои мечты исполняются, я чувствую, что могу сделать больше. И делаю это."),
        Affirmation(text: "Я всегда настроен (настроена) на успешное разрешение проблемы. Я свободен (свободна) от негативных убеждений и знаю, что успех рядом."),
        Affirmation(text: "Все, что я делаю, приносит в мир радость."),
        Affirmation(text: "Каждый день у меня появляются идеи. Меня вдохновляет и мотивирует возможность совершить что-то грандиозное."),
        Affirmation(text: "Я умею слушать и слышать. Я хороший собеседник, готовый дать мудрый совет."),
        Affirmation(text: "У меня развитая интуиция, и она никогда меня не подводит."),
        Affirmation(text: "Когда я достигаю цели, у меня вырастают крылья."),
        Affirmation(text: "Я всегда впитываю новую информацию. Знания помогают получать больше."),
        Affirmation(text: "Я задаю для себя высокие стандарты и действую в соответствии с ними."),
        Affirmation(text: "Меня уважают за серьезный подход к работе."),
        Affirmation(text: "Мне нравится учиться и получать опыт."),
        Affirmation(text: "Учеба — еще одна ступень к успеху и процветанию."),
        Affirmation(text: "Моя работа — настоящий праздник, где меня ждут интересные задачи и приятные коллеги."),
        Affirmation(text: "Я способный человек, знающий путь к успеху."),
        Affirmation(text: "Я узнаю много нового, следовательно, развиваюсь и становлюсь лучше."),
        Affirmation(text: "Я горжусь тем, что мне удалось преодолеть трудности и прийти к стабильному доходу."),
        Affirmation(text: "Мои близкие, друзья и коллеги уважают меня."),
        Affirmation(text: "Я притягиваю благоприятные обстоятельства и нужных людей."),
        Affirmation(text: "У меня есть четкое представление о своих желаниях, и я прекращаю свой путь к достижению цели."),
        Affirmation(text: "Мои главные качества — напористость и уверенность в собственных силах."),
        Affirmation(text: "Мои знания — словно трамплин к успеху и процветанию."),
        Affirmation(text: "Я умею бороться с ленью. Ее нет в моей жизни. Я всегда активен (активна) и работоспособен (работоспособна)."),
        Affirmation(text: "Я легко перешагиваю через проблемы, и ничто не может остановить меня в реализации задуманного."),
        Affirmation(text: "Я умный(ая)."),
        Affirmation(text: "Учиться — значит, подниматься по карьерной лестнице. Мне нравится получать знания."),
        Affirmation(text: "Я постоянно расту в личностном и профессиональном планах."),
        Affirmation(text: "Я умею ломать шаблоны и выходить за рамки."),
        Affirmation(text: "Мой мозг постоянно генерирует идеи, которые приносят доход."),
        Affirmation(text: "Просыпаясь утром, я знаю, что впереди прекрасный день, насыщенный интересными и позитивными событиями."),
        Affirmation(text: "Я везучий человек."),
        Affirmation(text: "Каждый день я делаю шаг к исполнению желания."),
        Affirmation(text: "Я работаю над собой. Я успешная личность, которой под силу преодолеть все преграды."),
        Affirmation(text: "На моем жизненном пути — только солнце и радуга."),
        Affirmation(text: "Я быстро и легко решаю рабочие задачи."),
        Affirmation(text: "Во мне — мощный заряд энергии."),
        Affirmation(text: "Коллеги и руководство ценят меня за ум и способность находить решения."),
        Affirmation(text: "Я счастлив (счастлива)."),
        Affirmation(text: "Я притягиваю к себе успех."),
        Affirmation(text: "Я мыслю позитивно и настроен (настроена) на процветание."),
        Affirmation(text: "Мое окружение — только позитивные и успешные люди, готовые поделиться знаниями и опытом."),
        Affirmation(text: "Окружающие тянутся ко мне. Им приятно находиться в моем обществе."),
        Affirmation(text: "Каждый день — еще одна возможность приблизиться к исполнению желаний, и я держу ее в руках."),
        Affirmation(text: "С воздухом, который я вдыхаю, в тело поступает энергия и сила."),
        Affirmation(text: "Каждое утро я чувствую радость и волнение от предстоящего дня. Я знаю, что меня ждет успех."),
        Affirmation(text: "У меня много идей и планов, и я знаю, как их воплотить в жизнь."),
        Affirmation(text: "У меня много энергии, которую я направляю на исполнение задуманного."),
        Affirmation(text: "Я смотрю вперед и вижу, как моя жизнь с каждым днем становится лучше."),
        Affirmation(text: "Засыпая, я знаю, что завтра меня ждет удача, и ничто не помешает достичь цели."),
        Affirmation(text: "Я постоянно двигаюсь вперед, легко преодолевая преграды. В этом вижу смысл беззаботной и интересной жизни."),
        Affirmation(text: "Со мной случаются только положительные ситуации."),
        Affirmation(text: "Я победитель по жизни, и у меня все всегда получается."),
        Affirmation(text: "Я лидер, и успех и удача всегда стоят на моей стороне."),
        Affirmation(text: "Я всегда принимаю правильные решения.")
    ]

    static let loveAffirmations = [
        Affirmation(text: "Я безоговорочно принимаю любовь."),
        Affirmation(text: "В моем сердце живут только любовь, счастье и радость."),
        Affirmation(text: "Я притягиваю внимание противоположного пола и дарю положительные эмоции."),
        Affirmation(text: "Я самостоятельно создаю свою прекрасную жизнь, наполненную любовью."),
        Affirmation(text: "Я уникальная личность, достойная любви и уважения."),
        Affirmation(text: "Меня окружают красивые люди, которые умеют принимать любовь и дарить ее другим."),
        Affirmation(text: "Я счастлив(а) и знаю, что впереди меня ждет все самое лучшее."),
        Affirmation(text: "Моя душа наполнена лучиками любви и добра."),
        Affirmation(text: "Я достоен(а) быть любимым(ой)."),
        Affirmation(text: "Я вижу смысл своей жизни в том, чтобы дарить любовь окружающим."),
        Affirmation(text: "Все, что находится вокруг меня, наполнено бескорыстной любовью."),
        Affirmation(text: "Я есть любовь!"),
        Affirmation(text: "Моя вторая половинка уже спешит на встречу со мной."),
        Affirmation(text: "Я строю отношения с любимым человеком на основе заботы, уважения и взаимопонимания."),
        Affirmation(text: "Я люблю (имя), и он(а) любит меня."),
        Affirmation(text: "Я отдаю миру и людям добро, тепло и любовь, и они возвращаются ко мне."),
        Affirmation(text: "Я люблю и уважаю себя. Окружающие относятся ко мне так же."),
        Affirmation(text: "Я самый счастливый мужчина(самая счастливая женщина) в мире, и у меня лучшая жена(муж)."),
        Affirmation(text: "В моей жизни есть только крепкие и взаимные чувства."),
        Affirmation(text: "Благодарю Вселенную за то, что дала мне любовь."),
        Affirmation(text: "Я чувствую взаимность от партнера ― он(а) тоже любит меня."),
        Affirmation(text: "Мой выбор ― Любовь!"),
        Affirmation(text: "Я умею искренне выражать свои чувства."),
        Affirmation(text: "Я счастлив(а), что умею любить."),
        Affirmation(text: "Любовь – это самое прекрасное чувство, которое сейчас переполняет меня."),
        Affirmation(text: "Окружающие хорошо относятся ко мне, и я это очень ценю."),
        Affirmation(text: "Любовь заряжает меня энергией, от которой я могу свернуть горы."),
        Affirmation(text: "Во мне есть светлое чувство, заставляющее менять свою и жизнь окружающих к лучшему."),
        Affirmation(text: "Я влюблен(а), и мне нравится находиться в этом состоянии."),
        Affirmation(text: "Я построил(а) крепкие отношения."),
        Affirmation(text: "Мне легко говорить о своей любви."),
        Affirmation(text: "Я люблю заботиться о своей жене(муже)."),
        Affirmation(text: "Встреча со второй половинкой уже предопределена. Я чувствую, что она скоро произойдет."),
        Affirmation(text: "Я привлекаю противоположный пол на физическом и эмоциональном уровне."),
        Affirmation(text: "Мой союз с (имя) крепкий, и ничто его не разрушит."),
        Affirmation(text: "В моей жизни всегда есть место любви, радости, уважению, стабильности."),
        Affirmation(text: "Я люблю и готов(а) поделиться этим прекрасным чувством со всем миром."),
        Affirmation(text: "У меня есть все качества, чтобы называться настоящим мужчиной(истинной женщиной)."),
        Affirmation(text: "Вселенная, как и моя любовь, безгранична."),
        Affirmation(text: "Я люблю все, что меня окружает."),
        Affirmation(text: "Я разрешаю себе открыто говорить о любви и выражать ее всегда и при любых обстоятельствах."),
        Affirmation(text: "Во мне бушует страсть, и я охотно делюсь ею со своим партнером."),
        Affirmation(text: "Я привлекаю женщин(мужчин) своей харизмой."),
        Affirmation(text: "Меня любят, и я люблю."),
        Affirmation(text: "От меня исходит свет, добро и любовь."),
        Affirmation(text: "Я сексуален(сексуальна)."),
        Affirmation(text: "Я ― магнит для счастья, благополучия и любви."),
        Affirmation(text: "Любовь ― Божий дар, и я благодарен(благодарна), что он у меня есть."),
        Affirmation(text: "Все, что я делаю ― во имя любви!"),
        Affirmation(text: "Каждое мгновение жизни пропитано любовью."),
        Affirmation(text: "Я наполнен(наполнена) счастьем, радостью, теплотой и любовью."),
        Affirmation(text: "Музыка в моем сердце ― это песня о безграничной любви."),
        Affirmation(text: "В моей жизни постоянно присутствуют любовь и счастье."),
        Affirmation(text: "Я рядом с (имя), и он(а) со мной."),
        Affirmation(text: "Я ― человек, достойный красивой и взаимной любви."),
        Affirmation(text: "У меня крепкая семья, в которой есть доверие и понимание."),
        Affirmation(text: "Я счастлив(а) от того, что любим(а)."),
        Affirmation(text: "Я принимаю любовь (имя) и пронесу ее через всю свою жизнь."),
        Affirmation(text: "Каждый день моя любовь к (имя) растет."),
        Affirmation(text: "В моей жизни много романтики."),
        Affirmation(text: "Мой выбор ― крепкие и здоровые отношения."),
        Affirmation(text: "Я ― лучшее, что есть у меня."),
        Affirmation(text: "Я привлекаю счастье и любовь."),
        Affirmation(text: "Моя сущность ― это искренняя любовь."),
        Affirmation(text: "Я красивый(ая) и умный(ая), поэтому легко найду вторую половинку."),
        Affirmation(text: "Я отпускаю прошлое и иду навстречу новым знакомствам."),
        Affirmation(text: "Меня поддерживают окружающие люди, и я отвечаю им тем же."),
        Affirmation(text: "Моя награда от Вселенной ― любовь."),
        Affirmation(text: "Мое будущее наполнено счастьем и абсолютной любовью."),
        Affirmation(text: "Я благодарен(а) (имя) за любовь, которую он(а) мне дарит."),
        Affirmation(text: "От меня, словно от солнца, исходят лучи добра, радости, любви и счастья."),
        Affirmation(text: "Я строю крепкий союз."),
        Affirmation(text: "Чем больше я проявляю любовь, тем больше ее становится в моей жизни.")
    ]

    static let healthAffirmations = [
        Affirmation(text: "Каждый день я чувствую себя прекрасно ― я здоровый человек."),
        Affirmation(text: "Я выздоравливаю, мое самочувствие улучшается ежеминутно."),
        Affirmation(text: "Мое тело сильное, красивое, молодое и здоровое."),
        Affirmation(text: "Я бесстрашен (бесстрашна). Болезни обходят меня стороной."),
        Affirmation(text: "Мои нервы крепкие, а все внутренние органы работают как единый слаженный механизм."),
        Affirmation(text: "Мое тело и дух живут в абсолютной гармонии."),
        Affirmation(text: "Я уникален, и мое тело уникально ― я не сравниваю себя с другими."),
        Affirmation(text: "Мои зубы здоровы. Они крепкие и белоснежные."),
        Affirmation(text: "Мои легкие здоровые. С каждым вздохом они наполняются кислородом. Мне легко дышать."),
        Affirmation(text: "Мой позвоночник здоровый. Он гибкий. В нем заключена моя жизнь."),
        Affirmation(text: "Моя печень здоровая. Она на все 100% справляется со своими функциями."),
        Affirmation(text: "Мои вены, артерии и капилляры здоровые. Сосуды чистые и эластичные. По ним бежит кровь, насыщая ткани питательными веществами."),
        Affirmation(text: "Я знаю, как выглядит здоровое тело, и оно у меня есть."),
        Affirmation(text: "Я уважаю свое тело и ценю его за ежедневную работу."),
        Affirmation(text: "Я слежу за своим физическим и психическим здоровьем."),
        Affirmation(text: "Я много знаю, чтобы уберечь себя от болезней."),
        Affirmation(text: "Я сильный и энергичный (сильная и энергичная) и могу выполнять разные физические упражнения."),
        Affirmation(text: "Я посылаю любовь и здоровье в те области организма, которые нуждаются в них."),
        Affirmation(text: "Я делаю все, чтобы моему телу было хорошо."),
        Affirmation(text: "Я всегда делаю правильный выбор для своего организма."),
        Affirmation(text: "Я принимаю помощь от других, которые хотят сделать для меня что-то."),
        Affirmation(text: "Я ― пример для близких и могу показать, как надо заботиться о себе."),
        Affirmation(text: "Я понимаю, насколько важно быть здоровым и всегда стремлюсь к этому."),
        Affirmation(text: "Мой организм умеет исцелять сам себя."),
        Affirmation(text: "Новый день ― шаг на пути к здоровому образу жизни."),
        Affirmation(text: "Я делаю то, что дает мне жизненные силы и энергию."),
        Affirmation(text: "Мой организм способен на удивительные вещи. Я верю в него."),
        Affirmation(text: "У меня много полезных привычек, которые помогают сохранить и улучшить состояние здоровья."),
        Affirmation(text: "Я здоров (здорова) и счастлив (счастлива)."),
        Affirmation(text: "Мой разум работает над тем, чтобы организм был здоровым."),
        Affirmation(text: "У меня есть время, чтобы полноценно отдохнуть и набраться сил."),
        Affirmation(text: "Я чувствую себя превосходно и благодарен своему организму за быстрое восстановление."),
        Affirmation(text: "Я разрешаю себе быть здоровым ― это единственный выбор."),
        Affirmation(text: "У меня есть силы для самоисцеления."),
        Affirmation(text: "Мое тело отзывается на мои желания и работает слаженно, чтобы я смог выполнить все задачи."),
        Affirmation(text: "Каждый день я чувствую прилив энергии."),
        Affirmation(text: "Я отдыхаю, чтобы мой организм восстановился и наполнился силами."),
        Affirmation(text: "Я знаю, что через неделю я выздоровлю."),
        Affirmation(text: "Мое тело чистое."),
        Affirmation(text: "Я прошу свой организм освободиться от всех преград, которые мешают выздоровлению."),
        Affirmation(text: "Я направляю всю энергию на исцеление."),
        Affirmation(text: "Мое естественное состояние ― быть молодым, красивым и здоровым человеком."),
        Affirmation(text: "Благодарю Вселенную за то, что она посылает мне силы и здоровье."),
        Affirmation(text: "Я прощаю людей, которые когда-то причинили мне боль."),
        Affirmation(text: "Я чувствую, как выздоравливаю и становлюсь сильнее."),
        Affirmation(text: "У меня есть право быть здоровым(ой), и я делаю все, чтобы всегда оставаться таким(ой)."),
        Affirmation(text: "Мое тело прекрасно, и я люблю его."),
        Affirmation(text: "Я избавляюсь от недуга и боли. Они исчезают, а организм становится здоровым."),
        Affirmation(text: "Я люблю себя, и эта любовь помогает мне быстро выздоравливать."),
        Affirmation(text: "Я принимаю исцеляющую энергию, которую посылают мне высшие силы."),
        Affirmation(text: "Я прощаю себя, чтобы скорее выздороветь."),
        Affirmation(text: "Как только я думаю об исцелении, в организме запускаются оздоровительные процессы."),
        Affirmation(text: "У меня много сил, чтобы победить болезнь."),
        Affirmation(text: "Я разрешаю себе быть сильным, полноценным человеком."),
        Affirmation(text: "Мое тело умеет самостоятельно исправлять нарушения и восстанавливаться.")
    ]
    
    static let dailyAffirmations = [
        Affirmation(text: "Каждый день дарит мне радость."),
        Affirmation(text: "Я ― такая(ой), как есть. Я имею право быть самой собой."),
        Affirmation(text: "Я знаю, что смогу осуществить свою мечту."),
        Affirmation(text: "Я приношу радость в этот мир."),
        Affirmation(text: "Сегодня и всегда меня ждут яркие и позитивные события."),
        Affirmation(text: "Я чувствую свою силу."),
        Affirmation(text: "Я заслуживаю внимания, поэтому забочусь о своем теле и душе."),
        Affirmation(text: "Каждый день я учусь чему-то новому и приобретаю опыт."),
        Affirmation(text: "Сегодня я сделаю еще один шаг на пути к осуществлению желания."),
        Affirmation(text: "Я люблю заботиться о себе. Я принимаю себя полностью."),
        Affirmation(text: "Я сам(а) рисую свою жизнь. Я художник, и в моей картине ― только яркие краски."),
        Affirmation(text: "Я переполнен(а) искренней любовью, которая вдохновляет меня на свершения."),
        Affirmation(text: "Я люблю себя. Я лучший(ая)."),
        Affirmation(text: "Только я знаю, что ждет меня в будущем. Там ― любовь."),
        Affirmation(text: "Я ощущаю поддержку высших сил."),
        Affirmation(text: "Все, о чем я прошу, Вселенная дает мне. Оно приходит в нужное время."),
        Affirmation(text: "Мои поступки приносят радость."),
        Affirmation(text: "Я хочу, чтобы мои планы реализовались ― да будет так!"),
        Affirmation(text: "Каждый день я становлюсь мудрее."),
        Affirmation(text: "В моей жизни есть место только для позитива."),
        Affirmation(text: "Мой дом ― моя крепость. Я люблю место, где живу"),
        Affirmation(text: "Я живу полноценной жизнью, насыщенной яркими событиями."),
        Affirmation(text: "С каждым днем я чувствую себя лучше и лучше."),
        Affirmation(text: "Я беру ответственность за свои слова и поступки."),
        Affirmation(text: "Я ― победитель. Меня преследуют успех и удача. Мне всегда и во всем везет."),
        Affirmation(text: "Благодарю Вселенную за то, что со мной происходит."),
        Affirmation(text: "Я ― моя любовь."),
        Affirmation(text: "У меня много возможностей, и я всегда делаю правильный выбор."),
        Affirmation(text: "Я отказываюсь от негатива и разрешаю радости и счастью войти в мою жизнь."),
        Affirmation(text: "Если я что-то ищу, то всегда нахожу."),
        Affirmation(text: "Я прекрасно выгляжу ― сегодня и всегда!"),
        Affirmation(text: "У меня все есть. Я контролирую жизнь и получаю все, что хочу."),
        Affirmation(text: "Я богатый человек и могу много себе позволить."),
        Affirmation(text: "Я принимаю вызовы судьбы и легко справляюсь с трудными ситуациями. Мой потенциал безграничен."),
        Affirmation(text: "Я прощаю себя и других."),
        Affirmation(text: "Я с радостью выхожу из зоны комфорта и иду навстречу позитивным переменам."),
        Affirmation(text: "Сегодня и всегда я нахожусь в прекрасном настроении."),
        Affirmation(text: "Окружающие ценят меня за доброту и позитивный настрой."),
        Affirmation(text: "Меня переполняет здоровье."),
        Affirmation(text: "Я контролирую свои мысли."),
        Affirmation(text: "Благодарю высшие силы за жизнь."),
        Affirmation(text: "Я люблю все новое ― это еще одна возможность стать лучше."),
        Affirmation(text: "Каждый день моя жизнь становится интереснее. Вселенная посылает мне хороших людей и удачу."),
        Affirmation(text: "Я наслаждаюсь своей жизнью, в которой присутствуют благополучие и изобилие."),
        Affirmation(text: "Я принимаю блага, которые посылает мне Вселенная. Я посылаю в небо тепло и любовь."),
        Affirmation(text: "Я постоянно получаю хорошие новости. Они приносят позитив в мою жизнь."),
        Affirmation(text: "Каждый человек уникален, и я принимаю всех такими, какие они есть."),
        Affirmation(text: "Я ― личность. Я умею и делаю то, что никто не может. У меня все получается."),
        Affirmation(text: "Я избавляюсь от страхов, сомнений и неуверенности."),
        Affirmation(text: "Во мне огромный потенциал, и я готов(а) свернуть горы, чтобы осуществить свою мечту."),
        Affirmation(text: "Мои желания исполняются."),
        Affirmation(text: "Завтра будет лучше, чем сегодня."),
        Affirmation(text: "Передо мной ― горизонт возможностей."),
        Affirmation(text: "Моё окружение ― позитивные люди."),
        Affirmation(text: "Я радуюсь жизни."),
        Affirmation(text: "Я умею работать. Все, что я достиг(ла) ― результат моих трудов."),
        Affirmation(text: "Мне спокойно."),
        Affirmation(text: "Я ― кузнец своего счастья."),
        Affirmation(text: "Я всегда нахожу выход из сложной ситуации."),
        Affirmation(text: "Любую проблему я решаю максимально быстро."),
        Affirmation(text: "Мое будущее прозрачно ― я знаю, что меня ждет, и работаю над осуществлением своей заветной мечты."),
        Affirmation(text: "Мои близкие поддерживают и верят в меня."),
        Affirmation(text: "Я умею отдыхать и накапливать энергию для новых свершений."),
        Affirmation(text: "Я всегда в движении."),
        Affirmation(text: "Мой разум чист."),
        Affirmation(text: "Я восхитителен (восхитительна)."),
        Affirmation(text: "У меня есть друзья, на которых я могу опереться."),
        Affirmation(text: "Я нахожусь в абсолютной безопасности."),
        Affirmation(text: "Я дарю другим радость и любовь."),
        Affirmation(text: "Я уверен (уверена), что день подарит позитивные эмоции."),
        Affirmation(text: "Я непоколебимо верю в себя."),
        Affirmation(text: "Мой ежедневный выбор ― здоровье и благополучие."),
        Affirmation(text: "Я наслаждаюсь жизнью и прилагаю усилия, чтобы она стала лучше."),
        Affirmation(text: "Я притягиваю благополучие и изобилие."),
        Affirmation(text: "Мы с партнером ценим и уважаем друг друга."),
        Affirmation(text: "В моей жизни присутствуют финансовая стабильность и процветание."),
        Affirmation(text: "Мое тело и душа ― единое целое. Между ними царит истинная гармония."),
        Affirmation(text: "Я вдохновлен (вдохновлена) на покорение высот."),
        Affirmation(text: "Я абсолютно счастлив (счастлива)."),
        Affirmation(text: "Каждое утро я заряжаюсь бодростью.")
    ]

    static let femaleAffirmations = [
        Affirmation(text: "Я прекрасна и заслуживаю уважения и любви. Меня принимают такой, какая я есть на самом деле."),
        Affirmation(text: "Во мне все идеально, и никакие изменения не нужны. Я красивая, молодая и здоровая."),
        Affirmation(text: "Я счастливая, любящая и любимая женщина."),
        Affirmation(text: "Моя душа поет. Я наслаждаюсь своей молодостью."),
        Affirmation(text: "Я милая. У меня красивая душа и идеальное тело."),
        Affirmation(text: "Я страстная и сексуальная."),
        Affirmation(text: "Я притягиваю к себе мужчин, как магнит."),
        Affirmation(text: "В моей душе всегда весна."),
        Affirmation(text: "Я иду своим путем, и ничто не собьет меня с маршрута."),
        Affirmation(text: "Я много достигла, и впереди еще планы, которые я обязательно реализую."),
        Affirmation(text: "Я все делаю правильно, и мне нравится, что у меня все получается."),
        Affirmation(text: "Я уверена в своем потенциале. Я способна на многое."),
        Affirmation(text: "В каждой клеточке моего тела ― искорка счастья."),
        Affirmation(text: "Я нахожусь в своем естественном состоянии ― состоянии радости и удовлетворения."),
        Affirmation(text: "Позитив и радость окутывают меня словно теплое одеяло."),
        Affirmation(text: "Я ― единственная и неповторимая."),
        Affirmation(text: "В моей жизни происходит все самое лучшее."),
        Affirmation(text: "Я чувствую умиротворение."),
        Affirmation(text: "От меня исходит любовь и позитив."),
        Affirmation(text: "Я наслаждаюсь счастьем."),
        Affirmation(text: "Я принимаю себя."),
        Affirmation(text: "Я легко преодолеваю преграды и добиваюсь успеха в любом деле."),
        Affirmation(text: "Мои желания всегда исполняются."),
        Affirmation(text: "Моя привычная реальность ― это успех и процветание."),
        Affirmation(text: "Я финансово независимая женщина."),
        Affirmation(text: "У меня крепкая семья, и я уверена в своем партнере."),
        Affirmation(text: "Каждый день становится лучше вчерашнего."),
        Affirmation(text: "Я испытываю вдохновение."),
        Affirmation(text: "Я прощаю всех, кто когда-либо обидел меня."),
        Affirmation(text: "Моет тело прекрасно, и оно способно на многое."),
        Affirmation(text: "Я забочусь о себе каждый день."),
        Affirmation(text: "Я искренна и умею выражать свои чувства."),
        Affirmation(text: "Все во мне идеально и красиво.")
    ]

    static let maleAffirmations = [
        Affirmation(text: "Я силен и полон здоровья."),
        Affirmation(text: "Я прирожденный лидер и умею заражать идеями других людей."),
        Affirmation(text: "Я ― пример успешного мужчины, который добивается своих целей."),
        Affirmation(text: "Я здоров и нахожусь в отличной физической форме."),
        Affirmation(text: "Во мне бурлит энергия."),
        Affirmation(text: "Для меня естественно быть успешным и процветающим."),
        Affirmation(text: "В любом деле я добиваюсь хорошего результата."),
        Affirmation(text: "Вокруг меня находятся позитивные и целеустремленные люди."),
        Affirmation(text: "Я легко и быстро справляюсь с задачами."),
        Affirmation(text: "Я красивый и умный."),
        Affirmation(text: "Я настоящий мужчина, и моя семья чувствует себя как за каменной стеной."),
        Affirmation(text: "Моя участь ― это успех, богатство и счастье."),
        Affirmation(text: "У меня гармоничные и крепкие отношения с супругой."),
        Affirmation(text: "Только я знаю, как мне жить."),
        Affirmation(text: "Я чувствую поддержку от жены и близких родственников."),
        Affirmation(text: "Перемены, которые происходят в жизни, всегда приносят радость."),
        Affirmation(text: "Каждый день я становлюсь сильнее и умнее."),
        Affirmation(text: "Я с благодарностью принимаю новые знания и опыт, которые помогают стать еще лучше."),
        Affirmation(text: "Я чувствую в себе много сил и могу свернуть горы, чтобы моя мечта исполнилась."),
        Affirmation(text: "Я понимаю важность заботы о себе."),
        Affirmation(text: "Я привлекаю внимание противоположного пола."),
        Affirmation(text: "Я делаю правильный выбор в пользу здорового образа жизни и построения крепкого брака."),
        Affirmation(text: "Я вижу возможности и ловлю шанс воспользоваться ими."),
        Affirmation(text: "Я мудрый, поэтому принимаю верные решения."),
        Affirmation(text: "Я избавляюсь от вредных привычек, чтобы быть всегда здоровым."),
        Affirmation(text: "Деньги и благополучие липнут ко мне."),
        Affirmation(text: "Я люблю все, что меня окружает.")
    ]
}

