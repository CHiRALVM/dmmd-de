//<continuation number="310">
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


scene dm5540_vs.nss_MAIN
{
$TEXTBOX_TYPE="���C��";
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();

		//���C���G�t�F�N�g�Z�b�g
		CreateTxtinEffect("�@",10000);
		CreateTxtinEffect("�m�C�Y",10000);

		call_scene $MainGameName;
		GameMainSet2();


	}

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#ev950�@�o�g���ėp�U��=true;
	#ev950�@�o�g���ėp�ːi=true;
	#ev950�@�o�g���ėp�h��=true;
	#ev950�@�̌��C�\��=true;

	EffectTxtinDelete();

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5550.nss";

}


scene dm5540_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//	CreateTextureSP("�G�w�i", 200, Center, Middle, "cg/bg/l/bg201011_0_���C���p�u���b�N�t�B�[���h_l.jpg");
//	WaitKey();
//	CreateMovieSP("�G����", 1000, 0, InTop, true, true, "dx/al_���g_6&.avi");
//	CreateMovieSP("�G����2", 1000, 0, InBottom, true, true, "dx/al_���g_7&.avi");
//	CreateMovie("�G����",300,Center,Middle,true,true,"dx/al_��g&.mpg");
//	Fade("�G����", 0, 1000, null, true);
//	Request("�G����", Start);
//	WaitKey();


	PrintBG("��w�i", 30000);

	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	OnBG(10,"bg201011_0_���C���p�u���b�N�t�B�[���h");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 200, Center, Middle, "cg/bg/l/bg201011_0_���C���p�u���b�N�t�B�[���h_l.jpg");
	Request("�G�w�i", Smoothing);
	Zoom("�G�w�i", 0, 800, 800, null, true);
	CreateTextureSP("�G�w�iEF", 100, Center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	Zoom("�G�w�iEF", 0, 2030, 2030, null, true);
	DrawEffect("�G�w�iEF", 0, "Ripple", 200, 200, null);
	Fade("�G�w�iEF", 0, 1000, null, true);
	Fade("�G�w�i", 0, 500, null, true);

	CreateSE("SE01","se�[��_���__�E�o01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("��w�i");
	Zoom("�G�w�i", 4500, 500, 500, Dxl1, false);
	Zoom("�G�w�iEF", 4500, 1000, 1000, Dxl1, false);
	FadeDelete("�G�F��", 2000, null, true);

	Wait(1000);
	Fade("�G�w�i", 1500, 1000, null, true);
	Delete("�G�w�iEF");

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/4000010a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm010",0,450,true);

	St("ML",740, @0,@0,"st�g��_�ʏ푾���Ȃ�_normal2");
	FadeSt("ML",200,false);
	St("MR",740, @0,@0,"st�N���A_���ʃ}�X�N����_normal");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm55/4000020a02">
"Aoba!"

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm55/4000030a04">
"Master!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
When I open my eyes&, I see Clear and Koujaku's worried 
faces&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm55/4000040a03">
"I finally got feedback&. Barely made it&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
Noiz mumbles things here and there while typing on his 
keyboard&.

All of his rabbit Allmates are scattered around him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/4000050a01">
"This&.&.&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal3");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm55/4000060a03">
"I've got my hands full&. Can't help it&."

{	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�g��_�ʏ푾���Ȃ�_pride");
	FadeSt("C",180,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm55/4000070a02">
"We can show off a little since you're back now&, can't we?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se�퓬_����_�n�ʂɎh��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
Koujaku smiles boldly as he thrusts out his long sword&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm55/4000080a02">
"Hey! Aoba's back!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
Mink&, who's fighting the guards and the Allmates&, looks 
back over his shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�퓬����_pride");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm55/4000090a02">
"All right&, let's stir some shit up!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 1000, 0, null);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Koujaku rises up&, running over to Mink with his large 
sword in his hands&.

Speaking of which&, where's Ren?

He should've come back with me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�@_�ʏ�}���g�Ȃ�_normal");
	FadeSt("C",200,true);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/4000100a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
Ren was standing behind me&.

He must still have some bugs left in his system&, but his 
gaze is still steadily fixed on me&.

When I look back&, a smile instinctively grows on my face&.

So it's all back to normal&.

Ren is looking at me like he always does&. Just thinking 
about it makes me feel relieved&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreatePlainSP("�G��", 5000);
	St("ML",740, @0,@0,"st�@_�ʏ�}���g�Ȃ�_normal");
	St("MR",740, @0,@0,"st�N���A_���ʃ}�X�N����_normal");
	FadeSt("ML",0,true);
	FadeSt("MR",0,true);
	FadeDelete("�G��", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I get up&, and look at Ren and Clear&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/4000110a01">
"We're going too&. Let's clean this up in one go&."

{
	St("ML",740, @0,@0,"st�@_�ʏ�}���g�Ȃ�_normal2");
	FadeSt("ML",200,true);
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/4000120a06">
"Right&."

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm55/4000130a04">
"Yes&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
We started to run towards Mink and Koujaku&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(32);
	CreateTextureEX("�G�G", 100, 0, -50, "cg/ev/m/ev550�o�O��Ԃ̘@_m.jpg");

	CreateTextureEX("�G�w�i", 100, center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	SetShade("�G�w�i", HEAVY);

	CreateTextureEX("�g��", 100, 320, Middle, "cg/bu/bu�g��_�퓬����_shout.png");
	CreateTextureEX("�~���N", 100, -120, Middle, "cg/bu/bu�~���N_�퓬_normal.png");

	Zoom("�g��", 0, 950, 950, null, true);
	Zoom("�~���N", 0, 950, 950, null, true);

	Move("�G�G", 600, -500, @0, AxlDxl, false);
	Fade("�G�G", 100, 1000, null, true);
	Wait(300);
	FadeDelete("�G�G", 200, null, false);

	Zoom("�G�w�i", 200, 1300, 1300, Dxl1, false);
	Fade("�G�w�i", 150, 1000, null, false);

	Zoom("�g��", 300, 1000, 1000, Dxl1, false);
	Fade("�g��", 200, 1000, null, true);



//{	St("C",740, @0,@0,"st�g��_�퓬����_shout");
//	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm55/4000140a02">
"Ohhhryahhhh!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(32);

	CreateTextureEXadd("�G�w�iEF01", 3000, -150, -600, "cg/ef/efx01���M02.jpg");
	Rotate("�G�w�iEF01", 0, @0, @0, 47, null,true);
	Zoom("�G�w�iEF01", 0, 2000, 2000, null, true);
	CreateTextureEX("�G�w�iEF02", 500, center, middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	SetBlur("�G�w�iEF02", true, 2, 100, 500, false);

	CreateSE("SE01","se�퓬_����_���؂荂01");
	CreateSE("SE02","se�퓬_����_����01");
	CreateSE("SE03","se�퓬_����_�n�ʂɎh��01");
	CreateSE("SE04","se�퓬_�Ō�_�q�b�g��03");
	MusicStart("SE01",0,700,0,1000,null,false);


	Zoom("�g��", 300, 1300, 1300, Dxl1, false);
	Move("�g��", 150, @100, @100, Axl1, false);
	FadeDelete("�g��", 150, Axl1, false);
	Wait(100);
	Zoom("�G�w�iEF01", 300, 2000, 4000, Dxl1, false);
	Fade("�G�w�iEF01", 0, 1000, null, true);
	Move("�G�w�iEF01", 300, @600, 100, Dxl2, false);
	FadeDelete("�G�w�iEF01", 200, Axl1, false);

	Shake("�G�w�i", 500, 3, 8, 0, 0, 1000, null, false);

	MusicStart("SE03",0,700,0,1000,null,false);

	Zoom("�~���N", 300, 1000, 1000, Dxl1, false);
	Fade("�~���N", 200, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm55/4000150a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(32);

	FadeDelete("�G�w�i", 300, null, false);
	Move("�~���N", 200, @-200, @0, Axl1, false);
	Zoom("�~���N", 200, 1200, 1200, Dxl1, false);
	FadeDelete("�~���N", 200, null, false);

	Wait(100);


	Wait(200);

	MusicStart("SE04",0,700,0,1000,null,false);

	Shake("�G�w�iEF02", 500, 10, 2, 0, 0, 1000, null, false);
	Zoom("�G�w�iEF02", 300, 2000, 4000, Dxl1, false);
	Fade("�G�w�iEF02", 0, 1000, null, true);
	Zoom("�G�w�iEF02", 500, 1100, 1100, null, false);
	FadeDelete("�G�w�iEF02", 500, Axl1, false);


	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("�G��", 200, 2000, 2000, Dxl1, false);
	FadeDelete("�G��", 200, null, true);

	Wait(100);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Koujaku triumphantly swings around his sword&, and Mink 
blows massive numbers of the guards and Allmates away 
with his fists&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Delete("�~���N");
	Delete("�g��");
//	Fw("fw���t_�ʏ�_shout");
	FwPro("fw���t_�ʏ�_angry",3000,"fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/4000160a01">
"Ren&, MERCY set! &.&.&.Uryahh!"

{	Fw("fw�@_�ʏ�}���g�Ȃ�_normal2");}//�l�^��
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/4000170a06">
"Roger&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(32);

//�����݁F�r�d�_�~�[
//	CreateSE("SE01","�W�J�r�d");
//	MusicStart("SE01",0,700,0,1000,null,false);
	EffectTxtinA("�@","��");
	EffectTxtinB("�@","��");

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	CreateSE("SE02","se�퓬_�Ō�_���؂荂01");
	CreateSE("SE03","se�퓬_����_������01");
	CreateSE("SE04","se�퓬_����_�n�ʂɎh��01");
	CreateSE("SE05","se�퓬_�Ō�_�q�b�g��04");

	CreateTextureEXadd("�G�w�iEF01", 1000, -716, -729, "cg/ef/efx01���M01.jpg");
	CreateTextureEXadd("�G�w�iEF02", 1000, 0, -729, "cg/ef/efx01���M03.jpg");
	Rotate("�G�w�iEF02", 0, @0, @0, 180, null,true);


	CreateTextureEX("�G�w�i", 100, center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 1500, 1500, null, true);

	CreateTextureEXadd("EF1", 500, center, Middle, "cg/ev/ev950�@�o�g���ėp�U��_���ʌ��M.png");
	Rotate("EF1", 0, @0, 180, @0, null,true);
	Move("EF1", 0, @-250, @0, null, true);
	CreateTextureEXadd("EF2", 500, center, Middle, "cg/ef/efx02�Ήԓd��01.jpg");
	Zoom("EF2", 0, 2000, 2000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
A little behind the rest of the group&, Ren and I fought 
together&.

Kicking the guards facing me into the air&, I give Ren 
instructions&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(32);



	CreateTextureEX("�@�ːi", 100, 400, Middle, "cg/ev/ev950�@�o�g���ėp�ːi_�l���@.png");
	CreateTextureEX("�@�U��", 100, -750, Middle, "cg/ev/ev950�@�o�g���ėp�U��_�l���@.png");
	Rotate("�@�U��", 0, @0, 180, @0, null,true);
	Rotate("�@�U��", 100, @0, @0, @-50, null,false);
	Zoom("�@�U��", 0, 900, 900, null, true);
	Zoom("�@�ːi", 0, 500, 500, null, true);
	SetBlur("�@�ːi", true, 2, 300, 50, false);
	SetBlur("�@�U��", true, 2, 500, 50, false);




	MusicStart("SE03",0,700,0,1000,null,false);

	Fade("�G�w�i", 100, 1000, null, false);
	Zoom("�G�w�i", 650, 2000, 2000, AxlDxl, false);
	BezierMove("�G�w�i", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@15,@-150), null, false);

	Zoom("�@�ːi", 300, 800, 800, Dxl1, false);
	Move("�@�ːi", 300, @-800, @0, Dxl2, false);
	Fade("�@�ːi", 100, 1000, null, true);
	Wait(100);

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�w�iEF01", 0, 1000, null, true);
	Move("�G�w�iEF01", 400, -600, 0, Dxl2, false);
	FadeDelete("�G�w�iEF01", 200, Axl2, false);

	Wait(100);

	Fade("�G�w�iEF02", 0, 1000, null, true);
	Move("�G�w�iEF02", 400, -1216, 0, Dxl2, false);
	FadeDelete("�G�w�iEF02", 200, Axl2, false);


	Shake("EF2", 500, 10, 3, 0, 0, 1000, null, false);
	Zoom("EF2", 300, 2500, 2500, Dxl1, false);
	Fade("EF2", 0, 1000, null, true);

	Rotate("�@�ːi", 100, @0, @0, @50, null,false);
	FadeDelete("�@�ːi", 100, null, false);

	MusicStart("SE02",0,700,0,1000,null,false);


	Wait(100);

	MusicStart("SE04",0,700,0,1000,null,false);

	Fade("�@�U��", 100, 1000, null, false);

	Rotate("�@�U��", 300, @0, @0, 0, Dxl2,false);
	Move("�@�U��", 300, @300, @0, Dxl1, false);
	Zoom("�@�U��", 200, 1000, 1000, Dxl1, false);
	Fade("�@�U��", 150, 1000, null, false);

	Shake("EF1", 500, 10, 3, 0, 0, 1000, null, false);
	Zoom("EF1", 300, 1200, 1200, Dxl1, false);
	Move("EF1", 300, @200, @0, Dxl1, false);
	Fade("EF1", 0, 1000, null, true);
	FadeDelete("EF2", 500, null, false);

	Zoom("EF1", 300, 1000, 1000, Dxl1, false);
	Fade("EF1", 200, 1000, null, false);

	Wait(100);

	MusicStart("SE05",0,700,0,1000,null,false);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054a]
Ren changed his arm into his weapon&, tearing most of the 
Allmates to pieces&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);
	Wait(32);

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i��", 5000, center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	Request("�G�w�i��", Smoothing);
	Zoom("�G�w�i��", 0, 1500, 1500, null, true);

	Move("�@�U��", 250, @300, @200, Axl3, false);
	Zoom("�@�U��", 250, 2000, 2000, Axl3, false);
	Move("EF1", 250, @1000, @0, Axl3, false);
	Zoom("EF1", 250, 2000, 2000, Axl3, false);

	Wait(130);

	Fade("�G�w�i��", 100, 1000, null, true);

	Delete("�@*");
	Delete("EF*");
	Delete("�G�w�i");

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal2");
	FadeSt("C",0,true);

	FadeDelete("�G�w�i��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm55/4000180a03">
"Hey&, LOSS&."

{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm55/4000190c10">
"LOSS set!"

{	Fw("fwAM�E�T�M���h�L_�{�N�T�[_normal");}
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm55/4000200c09">
"Roger!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(32);

	CreateTextureEX("�G�w�i", 200, center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 1100, 1100, null, true);

	DeleteAllSt(200,false);
	Fade("�G�w�i", 300, 1000, null, true);

	CreateSE("SE01","se�퓬_����_������01");
	CreateSE("SE02","se�퓬_����_�ːi����01");
	CreateSE("SE03","se�퓬_�e_�\����01����");
	CreateSE("SE04","se�퓬_�Ռ�_�j��01a");

//�����݁F�r�d�_�~�[
//	CreateSE("SE01","�W�J�r�d");
//	MusicStart("SE01",0,700,0,1000,null,false);

//���u���v�Z�b�g�B�E�T�M���h�L�����������~�T�C���̂悤�ɂЂ��Ђ����ł����B
	EffectTxtinA("�m�C�Y","��");
	EffectTxtinB("�m�C�Y","��");

	CreateTextureSP("USA1", 100, -770, -700, "cg/ev/x/ev960�E�T�M���h�L�퓬�\��_x02.jpg");
	Request("USA1", Smoothing);
	CreateTextureSP("USA2", 100, -770, -700, "cg/ev/x/ev960�E�T�M���h�L�퓬�\��_x01.png");
	Request("USA2", Smoothing);
	CreateTextureEX("USA3", 100, center, middle, "cg/ev/ev960�E�T�M���h�L�퓬�ːi.jpg");
	Request("USA3", Smoothing);
	SetBlur("USA3", true, 1, 500, 50, false);
	MoveFTP1("@USA3",5000,5,10);

	MusicStart("SE01",0,700,0,1000,null,false);


	BezierMove("USA1", 1000, (@0,@0){@300,@-250}{@450,@-150}(-419,-300), null, false);
	BezierMove("USA2", 1000, (@0,@0){@300,@-250}{@450,@-150}(-367,-258), null, false);

	Zoom("USA1", 1000, 600, 600, Axl2, false);
	Zoom("USA2", 1000, 700, 700, Axl2, false);

	FadeDelete("�G�w�i", 300, null, false);


	Wait(850);

	MusicStart("SE03",0,700,0,1000,null,false);
	Shake("USA3", 500, 4, 5, 0, 0, 1000, null, false);
	Zoom("USA3", 100, 1150, 1150, Dxl1, false);
	Fade("USA3", 100, 1000, null, true);
	Zoom("USA3", 300, 1080, 1080, AxlDxl, true);

	Delete("USA1");
	Delete("USA2");

	MusicStart("SE02",0,700,0,1000,null,false);
	MoveFTP1stop();
	Move("USA3", 300, @300, @150, Dxl3, false);
	Zoom("USA3", 300, 3100, 3100, Dxl3, false);
	Wait(150);

	MusicStart("SE04",0,700,0,1000,null,false);
	FadeDelete("USA3", 100, null, true);


	Wait(300);
	SetVolumeEX("SE04", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
Noiz types on the keyboard while giving instructions to 
the Pseudorabbits&, backing us up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 100, center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 1500, 1500, null, true);

	CreateTextureEX("�N���A", 100, center, Middle, "cg/bu/bu�N���A_���ʃ}�X�N����_normal.png");
	Zoom("�N���A", 0, 950, 950, null, true);

	CreateSE("SE01","se�퓬_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("�G�w�i", 200, 1300, 1300, Dxl1, false);
	Fade("�G�w�i", 150, 1000, null, false);

	Zoom("�N���A", 300, 1000, 1000, Dxl1, false);
	Fade("�N���A", 200, 1000, null, false);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm55/4000210a04">
"Please stoooooooooooop!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);
	Wait(16);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��03");

	Move("�N���A", 100, @0, @100, Axl1, false);
	Zoom("�N���A", 100, 1500, 1500, Axl1, false);
	FadeDelete("�N���A", 100, null, true);

	Fade("�G�F��", 0, 1000, null, true);
	Delete("�G�w�i");
	CreatePlainSP("�G��", 4000);
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G��", 500, 10, 7, 0, 0, 1000, null, false);
	FadeDelete("�G��", 500, null, false);
	FadeDelete("�G�F��", 300, null, true);

	Wait(300);


//��������A�ƌx����������

//���G�����C�g�̍U��

	CreateTextureEX("�G�w�i", 100, center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 1500, 1500, null, true);

	CreateTextureEX("����", 100, -100, 5, "cg/ev/x/ev550�o�O��Ԃ̘@_x05.png");
	Request("����", Smoothing);
	Zoom("����", 0, 950, 950, null, true);
	SetBlur("����", true, 1, 500, 50, false);

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("�G�w�i", 200, 1300, 1300, Dxl1, false);
	Fade("�G�w�i", 150, 1000, null, false);

	Move("����", 200, 100, @0, Dxl1, false);
	Zoom("����", 300, 1100, 1100, Dxl1, false);
	Fade("����", 200, 1000, null, false);


{	Fw("fw���t_�ʏ�_angry");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/4000220a01">
"Ren&, defense!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	Wait(16);
	CreateTextureEX("�G�}�X�N�g", 110, 0, 0, "cg/mask/ci�X���b�V��_05_00z.png");
	CreateMask("�G�}�X�N�E", 100, 0, 0, "cg/mask/ci�X���b�V��_05_01.png", true);
	SetAlias("�G�}�X�N�E","�G�}�X�N�E");
	CreateTextureEX("�G�}�X�N�E/�G�d�u100", 100, 200, -300, "cg/ev/m/ev950�@�o�g���ėp�h��_m.jpg");

	Move("�G�}�X�N�E/�G�d�u100", 200, -742, -335, Dxl3, false);
	Fade("�G�}�X�N*", 100, 1000, null, true);
	Wait(200);

//	Fw("fw�@_�ʏ�}���g�Ȃ�_normal2");//�l�^��

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070a]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/4000230a06">
"Roger&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(16);
//���@�A�h��V�[���h
	CreateTextureEX("EVM", 500, -742, -335, "cg/ev/m/ev950�@�o�g���ėp�h��_m.jpg");
	CreateTextureEX("EVM2", 500, center, middle, "cg/ev/ev950�@�o�g���ėp�h��.jpg");
	CreateTextureEXadd("EVM3", 500, center, middle, "cg/ev/ev950�@�o�g���ėp�h��.jpg");
	Zoom("EVM2", 0, 1500, 1500, null, true);

	CreateSE("SE01","se�[��_���__�Ђ�02");
	CreateSE("SE02","se�퓬_�h�q_�J��01");


	Fade("EVM", 0, 1000, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);

	MusicStart("SE02",0,700,0,1000,null,false);
	DrawTransition("EVM", 200, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", false);
	Zoom("EVM", 300, 750, 750, Dxl3, false);
	Fade("EVM2", 200, 1000, null, false);
	Zoom("EVM2", 300, 1000, 1000, Dxl3, true);


	Shake("EVM3", 1000, 10, 8, 0, 0, 1000, null, false);
	Fade("EVM3", 0, 1000, null, true);
	FadeDelete("EVM3", 300, null, true);

//	Zoom("�G�}�X�N�g", 200, 5000, 1000, null, false);
//	Zoom("�G�}�X�N�E", 200, 5000, 1000, null, false);
//	Move("�G�}�X�N�g", 200, @-650, @0, Dxl1, false);
//	Move("�G�}�X�N�E", 200, @-650, @0, Dxl1, true);

	Delete("����");
	Delete("�G�}�X�N*");
	Delete("�G�}�X�N�E/*");
	Delete("EVM");
	Delete("�G�w�i");
	FadeDelete("EVM2", 300, null, true);

	St("L",740, @0,@0,"bu�g��_�퓬����_shout");
	St("R",740, @0,@0,"bu�~���N_�퓬_normal");
	FadeSt("L",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm55/4000240a02">
"Toryah! Just a little more!!"

{
	DeleteSt("L", 150,true);
	FadeSt("R",150,true);
}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm55/4000250a05">
"These are just the small fry&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	DeleteAllSt(150,true);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g����01");
	MusicStart("SE01",0,700,0,1000,null,false);

//���g���ƃ~���N�łǂ��΂�������
	CreateTextureEX("�G�w�i", 100, center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 1500, 1500, null, true);

	CreateTextureEX("�N���A", 100, center, Middle, "cg/bu/bu�N���A_���ʃ}�X�N����_normal.png");
	Zoom("�N���A", 0, 950, 950, null, true);

	Zoom("�G�w�i", 200, 1300, 1300, Dxl1, false);
	Fade("�G�w�i", 150, 1000, null, false);

	Zoom("�N���A", 300, 1000, 1000, Dxl1, false);
	Fade("�N���A", 200, 1000, null, false);

	SetVolumeEX("SE01", 3000, 0, null);


//	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
//	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm55/4000260a04">
"Please don't come over heeeeerreee!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	TextBoxDelete(0);
	Wait(16);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��03");

	Move("�N���A", 100, @0, @100, Axl1, false);
	Zoom("�N���A", 100, 1500, 1500, Axl1, false);
	FadeDelete("�N���A", 100, null, true);

	Fade("�G�F��", 0, 1000, null, true);
	Delete("�G�w�i");
	CreatePlainSP("�G��", 4000);
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G��", 500, 10, 7, 0, 0, 1000, null, false);
	FadeDelete("�G��", 500, null, false);
	FadeDelete("�G�F��", 300, null, true);
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(200);

//��������A������



{	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0075]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm55/4000270a03">
"DEMOLISH&."

{	Fw("fwAM�E�T�M���h�L_���[�_�[_normal");}
//�y�E�T�M���h�L���[�_�[�z
<voice name="�E�T�M���h�L���[�_�[" class="�E�T�M���h�L" src="voice/dm55/4000280c10">
"DEMOLISH set!"

{	Fw("fwAM�E�T�M���h�L_�{�N�T�[_normal");}
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm55/4000290c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	TextBoxDelete(0);

	Wait(32);

//�����݁F���g�݁@�Y�݂���

	CreateTextureEX("�G�w�i", 200, center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 1100, 1100, null, true);

	DeleteAllSt(200,false);
	Fade("�G�w�i", 300, 1000, null, true);

	CreateSE("SE01","se�퓬_����_������01");
	CreateSE("SE02","se�퓬_����_�ːi����01");
	CreateSE("SE03","se�퓬_�e_�\����01����");
	CreateSE("SE04","se�퓬_�Ռ�_�j��01a");

//�����݁F�r�d�_�~�[
//	CreateSE("SE01","�W�J�r�d");
//	MusicStart("SE01",0,700,0,1000,null,false);

//���m�C�Y�̍U���A�u���v�Z�b�g�B�E�T�M���h�L�������~�T�C���ɂȂ��Ĕ��ł���B
	EffectTxtinA("�m�C�Y","��");
	EffectTxtinB("�m�C�Y","��");

	CreateTextureSP("USA1", 100, -770, -700, "cg/ev/x/ev960�E�T�M���h�L�퓬�\��_x02.jpg");
	Request("USA1", Smoothing);
	Rotate("USA1", 0, @0, 180, @0, null,true);
	CreateTextureSP("USA2", 100, -770, -700, "cg/ev/x/ev960�E�T�M���h�L�퓬�\��_x01.png");
	Request("USA2", Smoothing);
	Rotate("USA2", 0, @0, 180, @0, null,true);
	CreateTextureEX("USA3", 100, center, middle, "cg/ev/ev960�E�T�M���h�L�퓬�ːi.jpg");
	Request("USA3", Smoothing);
	Rotate("USA3", 0, @0, 180, @0, null,true);
	SetBlur("USA3", true, 1, 500, 50, false);
	MoveFTP1("@USA3",5000,5,10);


	MusicStart("SE01",0,700,0,1000,null,false);

	BezierMove("USA1", 1000, (@0,@0){@300,@-250}{@450,@-150}(-419,-300), null, false);
	BezierMove("USA2", 1000, (@0,@0){@300,@-250}{@450,@-150}(-367,-258), null, false);

	Zoom("USA1", 1000, 600, 600, Axl2, false);
	Zoom("USA2", 1000, 700, 700, Axl2, false);

	FadeDelete("�G�w�i", 300, null, false);


	Wait(850);

	MusicStart("SE03",0,700,0,1000,null,false);
	Shake("USA3", 500, 4, 5, 0, 0, 1000, null, false);
	Zoom("USA3", 100, 1150, 1150, Dxl1, false);
	Fade("USA3", 100, 1000, null, true);
	Zoom("USA3", 300, 1080, 1080, AxlDxl, true);

	Delete("USA1");
	Delete("USA2");

	MusicStart("SE02",0,700,0,1000,null,false);
	MoveFTP1stop();
	Move("USA3", 300, @-300, @150, Dxl3, false);
	Zoom("USA3", 300, 3100, 3100, Dxl3, false);
	Wait(150);

	MusicStart("SE04",0,700,0,1000,null,false);
	FadeDelete("USA3", 100, null, true);



	CreateTextureEXadd("�G�w�iEF01", 1000, -716, -729, "cg/ev/ev950�@�o�g���ėp�U��a_���ʌ��M.png");

	Wait(32);

	SetVolumeEX("SE04", 1000, 0, null);

	CreateTextureEXadd("EF1", 500, center, Middle, "cg/ev/x/ev950�@�̌��C�\��_���ʕ���_x01.png");
	SetVertex("EF1", 514, 435);
	Zoom("EF1", 0, 2300, 2300, null, true);

	CreateTextureEXadd("EF2", 1000, -212, 27, "cg/ef/efx02�Ήԓd��01.jpg");
	Zoom("EF2", 0, 1800, 1800, null, true);

	CreateColorEXadd("EF3", 5000, "FFFFFF");
	DrawTransition("EF3", 0, 500, 500, 100, null, "cg/data/beam_03_00_0.png", true);
	Fade("EF3", 0, 0, null, true);

	CreateColorEXadd("EF4", 5000, "FFFFFF");


	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/4000300a01">
"Ren! Cover Noiz's attack! JUBILATION set!"

{	Fw("fw�@_�ʏ�}���g�Ȃ�_normal2");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/4000310a06">
"Roger&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);


	Wait(32);

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	CreateSE("SE02","se�퓬_�Ō�_���؂荂01");
	CreateSE("SE03","se�퓬_����_������01");
	CreateSE("SE04","se�퓬_����_�n�ʂɎh��01");
	CreateSE("SE05","se�[��_���__�Ђ�02");
	CreateSE("SE06","se�[��_���__�E�o01");
	CreateSE("SE07","se�퓬_�Ռ�_�j��01a");
	CreateSE("SE08","se�퓬_���K�C_�`���[�W01");

	CreateMovieEX("�G����", 2000, 120, 170, true, true, "dx/mv0003�W����01_��&.ngs");
	Zoom("�G����",0,5000,3000,null,true);

	CloudZoomSmokeSet01("���",200,"cg/ev/x/ev950�@�̌��C�\��_���ʎ��d_x01.png");

	EffectTxtinA("�@","�c");
	EffectTxtinB("�@","�c");

	CreateTextureEX("�G�w�i", 100, center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	CreateTextureEX("�@�U��", 100, -250, Middle, "cg/ev/ev950�@�̌��C�\��.jpg");
	CreateTextureEXadd("��", 100, Center, Middle, "cg/ef/effi�\�I����_ef01.png");

	SetShade("�G�w�i", HEAVY);

	Zoom("�G�w�i", 0, 1500, 1500, null, true);
	Zoom("�@�U��", 0, 1300, 1300, null, true);
	Zoom("��", 0, 5000, 5000, null, true);

	Rotate("�@�U��", 100, @0, @0, @50, null,false);
	Move("��", 0, @-250, @50, null, true);
	SetBlur("�@�U��", true, 2, 300, 50, false);


	Shake("EF1", 10000000, 3, 3, 3, 3, 900, null, false);
	Shake("��", 10000000, 3, 3, 3, 3, 900, null, false);
	Shake("�@�U��", 10000000, 3, 3, 3, 3, 900, null, false);

	RotetoLoopOGM02("���v���Z�X","��",1800,-3600);
	RotetoLoopOGM03("���v���Z�X2","EF1",34000,-3600);


	MusicStart("SE03",0,700,0,1000,null,false);


	Fade("�G�w�iEF02", 100, 1000, null, false);
	Fade("�G�w�i", 100, 1000, null, false);
	Zoom("�G�w�i", 650, 2000, 2000, AxlDxl, false);
	BezierMove("�G�w�i", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@15,@-150), null, false);
	BezierMove("�G�w�iEF02", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@150,@-150), null, false);

	Wait(100);

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�w�iEF01", 0, 1000, null, true);
	Move("�G�w�iEF01", 400, -200, 0, Dxl2, false);
	FadeDelete("�G�w�iEF01", 200, Axl2, false);

	Wait(100);

	FadeDelete("�G�w�iEF02", 200, Axl2, false);

	MusicStart("SE02",0,700,0,1000,null,false);


	Wait(100);

	MusicStart("SE04",0,700,0,1000,null,false);
	MusicStart("SE08",0,600,0,200,null,false);

	Zoom("�@�U��", 300, 1100, 1100, Dxl3, false);
	Fade("�@�U��", 100, 1000, null, false);
	Move("�@�U��", 300, -180, -140, Dxl3, false);
	Rotate("�@�U��", 300, @0, @0, 0, Dxl2,true);
	SetBlur("�@�U��", false, 2, 300, 50, false);

	SetBlur("�@�U��", true, 2, 300, 50, false);

	CloudZoomSmokeStart01(1500,50,700,4500,900,120,250,240,200,Dxl1);

	Fade("�G����", 3000, 1000, Axl1, false);
	Fade("EF1", 3000, 500, null, false);
	Fade("��", 3000, 500, null, false);

	Zoom("�@�U��", 3000, 1000, 1000, AxlDxl, false);

	Shake("EF1", 500, 10, 3, 0, 0, 1000, null, false);
	Move("EF1", 300, -180, -140, Dxl1, false);

	MoveFTP1("@�@�U��",3000,3,1);
	MoveFTP2("@EF1",3700,3,2);

	Wait(3000);



	Shake("EF2", 1000, 10, 21, 0, 0, 1000, null, false);
	Fade("EF2", 0, 1000, null, true);
	Wait(50);

	MoveFTP1stop();
	MoveFTP2stop();

	MusicStart("SE05",0,700,0,1000,null,false);
	MusicStart("SE06",0,700,0,1000,null,false);
	SetVolumeEX("SE08", 1000, 0, null);
	SetVolumeEX("@dm*", 3000, 0, null);

	SetBlur("�@�U��", true, 2, 300, 50, false);
	Move("�@�U��", 200, -20, -200, Dxl2, false);
	Fade("EF3", 50, 1000, null, true);

	Shake("�@�U��", 1000, 10, 3, 12, 7, 900, null, false);

	Wait(50);

	Fade("EF4", 200, 1000, Axl1, true);

	MusicStart("SE07",0,1000,0,1000,null,false);

//�����t�̍U���B�u�c�v�Z�b�g�B�@�̗��r���炮�����Ɛn���o�Ă��āA�����Ƀr���b�Ɠd��������B
//���@�A�r�����������ēd�C���߁��G�Ɍ������Ęr���J���ĕ��B

//����Ԃ��傫���ǁ[��I

//�����C���ł̃o�g�����I���A�����֋A���Ă���

	Wait(3000);

	SetVolumeEX("SE*", 3000, 0, null);

	Wait(3000);

//�����t�@�C��["dm5550.nss"]

}
