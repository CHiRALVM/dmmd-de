//<continuation number="230">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm3260.nss_MAIN
{
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#�C�x���g�t�@�C����=true;
	#ev326���t�̋��q��͂ރ~���N=true;
	#bg302021_5_�O���b�^�[���ԓV��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3270.nss";

}


scene dm3260.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Mink and I didn't speak for a while when we got back to 
Glitter&. 

Without the power to make it to the second floor&, I lean 
on the wall&.

Mink sits on the side of the table and smokes his pipe&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011a]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/6000010a01">
"Are your team members going to be all right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�ʏ�_angry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/6000020a05">
"Who the fuck knows&. It's all on them&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/6000030a01">
"But they've been caught by the police-!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�ʏ�_angry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/6000040a05">
"So what? If you go to save them&, you'll just be caught
 with them too&."

{
	Fw("fw���t_�ʏ�_worry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/6000050a01">
"&.&.&.But!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
It pains me to even speak&, and I swallow my saliva down my dry throat&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/6000060a01">
"&.&.&.It was my fault&, wasn't it? If only I had done better
 back there&.&.&."

{
	Fw("fw�~���N_�ʏ�_angry");
}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/6000070a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	CreateSE("SE02","se�l��_����_����06");
	MusicStart("SE02",0,700,0,700,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Mink puts down his pipe onto the table and then takes long strides towards me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,30,null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/6000080a01">
"Guh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	SoundPlay("@dm006",0,450,true);

	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_�Ռ�_�]�|02");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u200", 200, -475, -537, "cg/ev/l/ev326���t�̋��q��͂ރ~���N_l.jpg");
	Move("�G�d�u200", 200, @0, @-20, Dxl1, false);
	Fade("�G�d�u200", 200, 1000, null, true);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 25, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
Suddenly&, he stretched out his large hands and gripped 
them around my throat&.

I push against his concrete wall of a body&.

Mink looks at me wriggling under him with his cold&, distant
eyes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��15");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�d�u200", 1000, -756, -282, Dxl3, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/6000090a05">
"You're a brat that's progressed not one damn bit&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/6000100a01">
"&.&.&.Uck&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/6000110a05">
"Will something happen if you sit there in regret? I don't
 have the time for that shit&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/6000120a05">
"Look at reality&. When did anyone blame you? Don't soak in
 your self-importance&. Nothing will change if you keep
 thinking that way&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/6000130a05">
"Don't run away this late in the game&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,500,0,1000,null,false);

	FadeDelete("�G�d�u*", 250, null, true);

	BGPlainShake(50,300,5,20,-2,3,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
His words overwhelm me&, and he takes his hand off my neck&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/6000140a01">
"Ghk&, guh&, guh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��11");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 200, 0, 1000, 100, Dxl3, "cg/data/slide_02_01_1.png", true);
	OnBG(10,"bg302021_5_�O���b�^�[���ԓV��");
	FadeBG(0,true);
	DrawTransition("�G����", 200, 1000, 0, 100, Dxl3, "cg/data/slide_02_01_0.png", true);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 35, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
I start to cough after being able to breathe again&, but 
this time he grabs at my hair&.

My neck flicks back as he pulls my hair down with force&, 
Mink's image filling up my vision&.

I scream in pain as my nerves go berserk while he pulls my hair&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��11");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 15, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/6000150a01">
"Uck&.&.&. Tch&.&.&.!"

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/6000160a05">
"Get yourself together&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/6000170a01">
"&.&.&.&.&.!"

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/6000180a05">
"If you have no self-awareness&, I'll drag it out&. It's more
 convenient that way&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,500,0,800,null,false);

	CreateSE("SE02","se�l��_�Ռ�_�@��02");
	MusicStart("SE02",0,500,0,800,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,30,null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/6000190a01">
"What&, &.&.&.Hck&, ahhh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
The intense pain runs down my spine on a level I've never 
felt before&.

Mink tightly grips my hair and my teeth grind together&.

{
	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,500,0,1000,null,false);

	SetVolumeEX("SE*", 1000, 0, null);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,20,null, true);
	Delete("�G��");
}
Cold sweat covers my body and the pain feels as if it's 
directly chewing my nerves off&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/6000200a01">
"Ow&, ah&, &.&.&.Ungh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
I grind my teeth even harder&, and my vision becomes dyed 
with a bitter red&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,30,null, true);
	Delete("�G��");

//	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/6000210a01">
"&.&.&.Gh&, Ow&.&.&. It&.&.&. Let- go&.&.&.Let me go&.&.&.!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 0, 5, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
Wanting to escape from the pain&, I reflexively make a fist and punch&.

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/6000220a05">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(500,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
The pain chewing at me stops&.

{
	St("C",740, @0,@0,"bu�~���N_�ʏ�_serious");
	FadeSt("C",200,true);
}
I notice that Mink is taking a sidelong glance at me with 
his head tilted&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�t���b�V����", 100, Axl2, true);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 50, 0, 0, 0, 500, null, true);
	Delete("�G��");

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/6000230a01">
"-!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I receive a punch to the face in return&. As a result&, my
world begins to shake and sway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
Mink grabs my shaking body by the arm and turns me over&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm3270.nss"]

}
