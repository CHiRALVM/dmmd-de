//<continuation number="160">
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


scene dm0650_vs.nss_MAIN
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
	#evf02�����q�l�ÈłɘȂ�=true;
	#ev900���t�R��ėp=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0650sl.nss";

}


scene dm0650_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�w�i100", 100, -515, -485, "cg/bg/l/bg402021_1_��������֎~���H��O��_l.jpg");

	FadeDelete("��w�i", 0, null, true);

//==============================================
//���ȍ~�A����
//==============================================

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/5000010a04">
"Isn't this exciting?"

{	Fw("fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/5000020a01">
"It sounds like you think this is a game&."

{	Fw("fw�~���N_�ʏ�_normal2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/5000030a05">
"&.&.&.Let's go&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE01","se����_�h�A�S_���J������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, Dxl2, "cg/data/slide_01_00_0.png", true);

	Delete("�G�w�i*");

	OnBG(10,"bg402031_1_��������֎~���H�ꕔ��01");
	FadeBG(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
On Mink's signal&, Koujaku opens the door&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(1000);

	CreateColorSPover("�G����1200", 1200, "BLACK");

	CreateTextureSP("�G�d�u1100", 1100, Center, Middle, "cg/ev/evf02�����q�l�ÈłɘȂ�.jpg");
	CreateTextureSP("�G�d�u1101", 1101, -59, -140, "cg/ev/l/evf02�����q�l�ÈłɘȂ�_l.jpg");
	FadeDelete("�G����", 1000, null, false);

	Wait(500);

	CreateSE("SE10","se�[��_����_�L�[��01");
	MusicStart("SE10",2000,200,0,100,null,false);

	FadeDelete("�G����1200", 3000, null, true);

	Wait(500);

////�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//<PRE @box0>
//[text0015]
////�y�����q�l�z
////<voice name="�����q�l" class="�����q�l" src="voice/dm06/5000040e54">
////�u�c�c�I�v
//
//
//</PRE>
//	SetText();
//	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
&.&.&.There was a crowd of black-clothed people in a room that was otherwise empty&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Are these guys&.&.&. part of Morphine?

{
	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,700,null,false);
	CreateSE("SE02","se�l��_����_�ߎC��02");
	MusicStart("SE02",0,800,0,900,null,false);
	CreateSE("SE03","se�l��_����_�ߎC��02");
	MusicStart("SE03",0,600,0,1100,null,false);
	CreateSE("SE04","se�l��_����_�ߎC��02");
	MusicStart("SE04",0,800,0,1300,null,false);
	SetVolumeEX("SE10", 200, 0, null);
	SetVolumeEX("SE*", 800, 0, null);

	Move("�G�d�u1101", 300, @-200, @0, Dxl1, false);
	FadeDelete("�G�d�u1101", 300, null, true);
}
All of them turn around and see us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G�F��3000", 3000, "000000");
	DrawTransition("�G�F��3000", 200, 0, 1000, 100, null, "cg/data/zzex_circle_01_00_0.png", true);

	Delete("�G�d�u1100");

	CreateSE("SE10","se�퓬_����_�ːi����01");
	MusicStart("SE10",0,700,0,600,null,false);
	CreateSE("SE12","se�l��_����_����03����");
	MusicStart("SE12",1000,700,0,700,null,false);
	CreateSE("SE13","se�l��_����_����03����");
	MusicStart("SE13",1000,700,0,600,null,false);

	DrawDelete("�G�F��3000", 200, 100, null, "zzex_circle_01_00_1", true);

	SoundPlay("@dm009",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
&.&.&.Then they all run full-speed towards us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/5000050a01">
"! They're coming!"

{
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("ML",740, @0,@0,"st�g��_�퓬�f��_pride");
	FadeSt("ML",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/5000060a02">
"Don't go over there! Hey! Come over here!!"

{
	DeleteAllSt(180,true);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("MR",740, @0,@0,"st�~���N_�퓬_normal");
	FadeSt("MR",180,true);
}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/5000070a05">
"&.&.&.&.&."

{
	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",180,true);
	ClearComicNext(20001,393,-22,26,"st");
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/5000080a04">
"Waaaaah!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,800,null,false);

	ClearComicNexDelete();
	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0028]
Koujaku and Mink head forward first and cut through the 
crowd&.

I follow&, with the indecisive Clear close behind&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�g���`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm06/5000090e47">
"Koujaku-san!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE13","se�l��_����_����03����");
	MusicStart("SE13",1000,700,0,700,null,false);
	SetVolumeEX("SE13", 3000, 0, null);

	CreateSE("SE����","se��_�퓬_����01L");
	MusicStart("SE����",5000,500,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I hear footsteps behind us&. It's the Beni-Shigure group&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"st�g��_�퓬�f��_shout");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/5000100a02">
"Uryah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	DeleteSt("C", 0,true);
	Wait(30);
	Fade("�G�F��", 70, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
Koujaku exchanges looks with his members and knocks down 
the black-clothed people one by one&.

Mink silently fights them with his fists&, taking two&, even three members down at once&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	BGPlainShake(50,300,20,2,0,0,1000,null,false);
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

	FwPro("fw���t_�ʏ�_rage",1000,"fw���t_�ʏ�_pain");
//	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/5000110a01">
"There! &.&.&.!" 


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
I go to get some black-clothed guys as well&, but I can't 
avoid one of them and an elbow hits my chin&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro2("fw���t_�ʏ�_pinch",1550,"fw���t_�ʏ�_shock2",1200,"fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/5000120a01">
"Owowow&.&.&.&. Uwah&, you little-!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainEX("�G��", 50);

	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(30);
	Shake("�G��", 300, 10, 4, 0, 0, 1000, null, false);
	Fade("�G�F��", 70, 0, null, true);

	Wait(150);

	Fade("�G�F��", 0, 1000, null, true);
	CreateSE("SE02","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(30);
	Shake("�G��", 300, -4, 10, 0, 0, 1000, null, false);
	Fade("�G�F��", 70, 0, null, true);
	Delete("�G�F��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
He immediately pulls his fists back for another hit&, but I stop him with my arm&.

But then he starts to rapidly pound with his other fist&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Delete("�G��");

	FwPro("fw���t_�ʏ�_rage",2050,"fw���t_�ʏ�_shock2");
//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/5000130a01">
"You're- So persistent&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE����", 5000, 350, null);

	DeleteFw();
	CreatePlainSP("�G��", 5000);

	CreateMaskSetSP("�G��", 2001, 0, 0, "ci���C��_01_00", true, "ci���C��_01_00z");
	CreateTextureSP("�G��/�G�摜", 2000, -1330, -30, "cg/ev/l/evf02�����q�l�ÈłɘȂ�_l.jpg");
	Request("�G��/�G�摜", Smoothing);
	Zoom("�G��/�G�摜", 0, 1300, 1300, null, true);

	DrawDelete("�G��", 500, 100, Dxl3, "slide_05_01_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
I look at his face&, and the sight sends shivers down my 
spine&.

&.&.&.What's wrong with this guy's eyes?

They look blank&, just like a doll's&.

And when I take a better look at his face&, I realize 
something&.

Is this guy part of Dry Juice&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Delete("�G��*");
	Delete("�G��/�G*");
	DrawDelete("�G��", 100, 200, Dxl3, "slide_05_01_1", true);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	BGPlainShake(50,300,-40,10,0,0,1000,null,false);
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

{	Fw("fw���t_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/5000140a01">
"&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
As I stand distracted&, he takes the chance to send a blow  to my shoulder&.

The intense pain travels as far as my fingertips&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/5000150a01">
"&.&.&.That hurt&, you asshole!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("�G���o��", 1000, 0, Middle, "cg/ev/l/ev900���t�R��ėp_l.jpg");
	CreateTextureSP("�G���o���", 900, Center, Middle, "cg/ev/ev900���t�R��ėp.jpg");
	Wait(50);
	Move("�G���o��", 300, -1024, 0, Dxl3, false);
	FadeDelete("�G���o��", 200, null, true);

	Wait(200);
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateColorEXadd("�G�F��", 4000, "FFFFFF");
	Fade("�G�F��", 100, 1000, Dxl3, true);
	Delete("�G��*");
	Wait(30);
	BGPlainShake(50,200,10,10,0,0,1000,Dxl1,false);
	FadeDelete("�G�F��", 100, Dxl3, true);

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
I reflexively turn and let loose a roundhouse kick&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�l��_�Ռ�_�]�|01");
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
I hit his stomach&, and he looks as if he's about to crumbleto the ground&.

The people here&.&.&.
Are they all Dry Juice?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_worry3",1150,"fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/5000160a01">
"&.&.&.Wah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

	Wait(300);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Delete("�G�d�u");
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0056]
A fist comes at me from the side&, and I kick at it in a 
panic&.

{
	SetVolumeEX("SE����", 5000, 0, null);
}
&.&.&.Right&. Where'd Clear go?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0650sl.nss"]

}
