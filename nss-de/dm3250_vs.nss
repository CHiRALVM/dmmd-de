//<continuation number="190">
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


scene dm3250_vs.nss_MAIN
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

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3260.nss";


	//�����Ƀ��x���ݒ�
	$HALevel=2;
}


scene dm3250_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm009",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg306031_5_�q�ɓ����ו���");
	FadeBG(0,true);

	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateColorSPadd("�G��/�G����", 200, "WHITE");
	DrawTransition("�G��/�G����", 0, 0, 160, 1000, null, "cg/data/effect_01_00_0.png", true);

	DrawDelete("��w�i", 300, 100, Dxl1, "slide_01_01_1", true);

	St("C",740, @0,@0,"st�~���N_�ʏ�_shout");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/5000010a05">
"Hey&, over here!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Mink raises his voice in a place where he can be clearly 
seen and won't be interrupted&. The policemen notice him&.

They'll come here like a swarm of bees&.&.&.!
What the hell is he thinking&.&.&.!?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteSt("C", 200,true);

	Fw("fwm�~���N�`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm32/5000020e45">
"All right&, here we go!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

//���ǂ����I�I�I����������������

	CreateColorEXadd("�G��/�G������", 1100, "WHITE");
	CreateColorEX("�G��/�G�����Q", 1105, "WHITE");
	CreatePlainSP("�G��", 1000);

//	CreateTextureSP("�G�w�i", 1000, Center, Middle, "cg/bg/bg306031_5_�q�ɓ����ו���.jpg");

	CreateSE("SE01","se�퓬_�Ռ�_������������01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G��", 500, 10, 10, 0, 0, 500, null, false);
	Fade("�G��/�G������", 0, 500, null, true);
	DrawTransition("�G��/�G������", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);
	Fade("�G��/�G�����Q", 0, 1000, null, true);
	DrawTransition("�G��/�G�����Q", 300, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", true);


	FadeDelete("�G��", 500, Dxl2, true);

	OnBG(10,"bg306021_5_�q�ɓ����������");
	FadeBG(0,true);

	DeleteSt("C", 0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
I heard the sound of something large fall down&, and the 
room goes white once again&.

This time it's even more dense&, I can't see a thing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_shock2",800,"fw���t_�ʏ�_pinch");
//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/5000030a01">
"Wha&.&.&.&.! Hck&, ghack!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	Fade("�G��/�G������", 500, 100, null, false);
	Fade("�G��/�G�����Q", 500, 800, null, false);
	DrawTransition("�G��/�G������", 500, 1000, 500, 1000, Dxl1, "cg/data/slide_02_00_0.png", false);
	DrawTransition("�G��/�G�����Q", 500, 1000, 200, 1000, Dxl1, "cg/data/slide_02_00_0.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
I choke while trying to breathe&.
This texture&.&.&. flour?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//	St("C",740, @0,@0,"st����_�ʏ�_pain");
//	St("C",740, @0,@0,"st����_�ʏ�_sigh");
//	FadeSt("C",200,true);
//	FadeStPro("C", 5650, 200);

	Fw("fw����_�ʏ탁�K�z���Ȃ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�����z
<voice name="����" class="����" src="voice/dm32/5000040b08">
"Urk! Gff! Wh-What the hell!! Flour!?"

{
	Fw("fwm�x��B_�ʏ�_normal");
}
//�y�x���b�z
<voice name="�x���b" class="�x���b" src="voice/dm32/5000050e15c">
"Shit&, shoot! Shoot!"

{
	Fw("fw����_�ʏ탁�K�z���Ȃ�_shock");
}
//�y�����z
<voice name="����" class="����" src="voice/dm32/5000060b08">
"Stop it&, idiots!!! Are you trying to kill me!! Stop
 shooting!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw����_�ʏ탁�K�z���Ȃ�_shout");
//	St("C",740, @0,@0,"st����_�ʏ�_shout");
//	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�����z
<voice name="����" class="����" src="voice/dm32/5000070b08">
"It's different from a smokescreen! The flour spreads like
 fire in this damn warehouse!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

//	DeleteSt("C", 180,true);
	St("C",740, @0,@0,"st�~���N_�ʏ�_shout");
	FadeSt("C",0,true);

	OnBG(10,"bg306031_5_�q�ɓ����ו���");
	FadeBG(0,true);

	FadeDelete("�G��", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/5000080a05">
"Hey&, do it!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
The policemen wrangle around&, and Mink yells at me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/5000090a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
I don't want to use my power if I can avoid it&.

But&.&.&. there's no other way to get out of here unscathed&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G�F��", 5000, "000000");
	DrawTransition("�G�F��", 500, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	SetVolumeEX("@dm*", 3000, 0, null);
	Wait(2000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
I put up the megaphone to my mouth&, close my eyes&, and 
concentrate&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE11","se�l��_�S��_�ۓ�02L");
	MusicStart("SE11",1500,700,0,1000,null,true);

//	Wait(1500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
Cutting off all of the voices around me&, I listened 
carefully to the pounding of my heart&.

{
	SetVolumeEX("SE*", 500, 1000, null);
}

I'll do whatever I can&.&.&. to make it work&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	TemptationNoizSet("�G�������t�U�f������",2102);
	TemptationAobaSet("�G�������t�U�f",2100,Center,Middle,"cg/ev/ev900�����P�l�̑��t.jpg",1500,1500);

	CreateColorEX("�G�������t�U�f���B", 2110, "000000");
	DrawTransition("�G�������t�U�f���B", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	Fade("�G�������t�U�f���B", 0, 2000, null, true);
	Fade("�G�������t�U�f", 0, 2000, null, true);
	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	TemptationAobaIn("�G�F��");

	SetVolumeEX("SE*", 1500, 1500, null);
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
I'll concentrate on my "voice"&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	TemptationDelete("@�G�������t�U�f���B");
	SetVolumeEX("SE*", 300, 0, null);
	DrawDelete("�G�F��",1000, 100, Dxl3, "slide_05_00_0", true);

	Wait(300);

	Fw("fw���t_�ʏ�͍s�g_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//���������{���K�z��
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/5000100a01">
"&.&.&.Stop!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�[��_����_�͑��t01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("�G�F��", 5000, "WHITE");
	CreateColorEXadd("�G�F����", 5001, "WHITE");
	Fade("�G�F��", 300, 1000, Dxl1, true);
	Fade("�G�F����", 0, 300, Dxl1, true);
	CreateTextureSPadd("�G����", 1000, Center, Middle, "cg/ef/efbg����01.jpg");
	Zoom("�G����", 500, 2000, 2000, Axl2, false);
	Wait(100);

	CreatePlainEX("�G��", 2000);
	CreatePlainEX("�G�ʓ�", 2000);
	Request("�G��*", Smoothing);
	Zoom("�G��", 0, 2000, 2000, null, true);
	Zoom("�G�ʓ�", 0, 2150, 2150, null, true);
	Fade("�G��", 0, 300, Dxl1, true);
	Fade("�G�ʓ�", 0, 300, Dxl1, true);

	Zoom("�G��*", 600, 1000, 1000, Axl2, false);
	Wait(50);
	FadeDelete("�G�F��", 150, Dxl1, false);
	FadeDelete("�G����", 150, Dxl1, false);
	Wait(50);
	FadeDelete("�G��*", 1000, Dxl1, false);
	FadeDelete("�G�F����", 1000, Dxl1, true);

//�����b�̊�

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]

//�y�x���a�z
<voice name="�x���a" class="�x���a" src="voice/dm32/5000110e15b">
"Guh&.&.&. Ugh&.&.&.!"

//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm32/5000120e45">
"Ahhh&, ahhhhh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);
//	BGPlainShake(5000,200,5,5,0,0,1000,Dxl1,false);

	Wait(200);

	CreateSE("SE02","se�l��_�Ռ�_�]�|02����");
	MusicStart("SE02",0,700,0,1000,null,false);
//	BGPlainShake(5000,300,0,5,0,0,1000,Dxl1,false);

	Wait(500);

//	St("C",740, @0,@0,"st����_�ʏ�_pinch");
//	FadeSt("C",200,true);
	Fw("fw����_�ʏ탁�K�z���Ȃ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�����z
<voice name="����" class="����" src="voice/dm32/5000130b08">
"W-What the&.&.&. My head&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,700,0,1000,null,false);
//	BGPlainShake(5000,300,5,5,0,0,1000,Dxl1,true);
	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
&.&.&.

&.&.&.Did it work?

The gunshots have stopped&, but&.&.&.
Painful groans are coming from all over&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�e�F�G�t�F�N�g����
	DrawTransition("�G��/�G����", 1000, 160, 0, 1000, null, "cg/data/effect_01_00_0.png", false);
	DrawTransition("�G��/�G������", 2000, 500, 0, 1000, null, "cg/data/slide_02_00_0.png", false);
	DrawTransition("�G��/�G�����Q", 2000, 200, 0, 1000, null, "cg/data/slide_02_00_0.png", true);
	Delete("�G��/�G*");
	Delete("�G��*");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
The white mist dissipates and I don't know what's going on 
around me&.

The display in front of me&.&.&. freezes me in place&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 100, -250, InBottom, "cg/bg/l/bg306031_5_�q�ɓ����ו���_l.jpg");
	Move("�G�w�i", 0, @0, @50, null, true);
	Move("�G�w�i", 2500, @250, @0, AxlDxl, false);
	Fade("�G�w�i", 1000, 1000, null, true);

	Wait(1500);

//	SoundPlay("@dm006",0,450,true);
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0145]
Both the policemen and Mink's members&.&.&. all of them are 
writhing down on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/5000140a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
This&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G����", 6000, "BLACK");
	Fade("�G����", 500, 1000, Dxl1, true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/m/bg306031_5_�q�ɓ����ו���_m.jpg");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0175]
This isn't a success&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
&.&.&.This is a failure&. I failed&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(1000,300,5,5,0,0,1000,Dxl1,false);
	DrawDelete("�G����", 200, 100, Dxl1, "slide_03_01_1", true);

	St("C",740, @0,@0,"bu�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0181]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/5000160a05">
"Hey&, we're going&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
Mink comes up to me and pulls me by the arm&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/5000170a01">
"But your team members&.&.&.!"

{	St("C",740, @0,@0,"bu�~���N_�ʏ�_shout");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/5000180a05">
"Police reinforcements are coming&. Just run&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE02","se�퓬_����_����01a");
	MusicStart("SE02",0,700,0,900,null,false);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 200, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	DeleteSt("C", 0,true);

	Delete("�G�w�i");

	OnBG(10,"bg306011_5_�q�ɊO�ϒʂ�");
	FadeBG(0,true);

	CreateSE("SE01","se�l��_����_����01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreateSE("SE02","se�l��_����_����01L");
	MusicStart("SE02",0,700,0,900,null,true);

	DrawDelete("�G����", 200, 100, null, "slide_01_01_1", true);

	Wait(500);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 200, 0, 1000, 100, Dxl1, "cg/data/zzex_circle_01_00_1.png", true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/ef/efbg����001.jpg");
	Zoom("�G�w�i", 0, 2000, 2000, null, true);
	Rotate("�G�w�i", 0, @0, @0, @-20, null,true);

	CreateSE("SE01","se�l��_����_����01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	DrawDelete("�G����", 200, 100, null, "zzex_circle_01_00_1", true);

	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
He pulls me roughly by the arm&, and I can't help but run
along with him&.

I can hear the sound of hundreds of footsteps coming from 
the other direction&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

$HALevel=2;
	HAFade(2000, 0,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0215]
As if to condemn me&, my head starts to throb with pain&.

I failed with Scrap&.

And because of that&, even Mink's people&.&.&.

The reason why I failed&.&.&. was probably because I couldn't 
concentrate enough power&.

That's why it only worked halfway&, and went wrong 
somewhere&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/5000190a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
The violent wave of self-hatred hits me&.

It's too late to repent&.
Nothing can be done&.

I know that&.
I know that&, but&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "000000");

	Fade("�G�F��", 2000, 1000, null, true);
	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0235]
We make our escape from the warehouse and go back to 
Glitter&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(1000, true);

//�����t�@�C��["dm3260.nss"]

}
