//<continuation number="130">
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


scene dm3470_vs.nss_MAIN
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
	#bg307041_5_�o�C�N�r������o�C�N=true;
	#ev920�~���N�Ƒ��t�o�C�N=true;
	#bg307031_5_�o�C�N�r������=true;
	#bg304011_5_���]�^���[�S�i=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3480_vs.nss";

}


scene dm3470_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg307031_5_�o�C�N�r������");
	FadeBG(0,true);
	CreateTextureEX("�G�w�i", 3000, Center, Middle, "cg/bg/bg307031_5_�o�C�N�r������.jpg");
	Fade("�G�w�i", 0, 1000, null, true);


//�J�����f�ސݒ�
	CreateCamera("�b", -600, -200, 500);
	SetAlias("�b","�b");
	CreateTextureSP("�b/ev1", 50, Center, Middle, "cg/ev/ev920�~���N�Ƒ��t�o�C�N_�w�i.jpg");
	SetShade("�b/ev1", HEAVY);
	CreateTextureEX("�b/ev1_2", 50, Center, Middle, "cg/ev/ev920�~���N�Ƒ��t�o�C�N_�w�i.jpg");
	Zoom("�b/ev1", 0, 5000, 5000, null, true);
	Zoom("�b/ev1_2", 0, 5000, 5000, null, true);
	CreateTextureSPadd("�b/ev3", 600, 800, 276, "cg/ev/ev920�~���N�Ƒ��t�o�C�N_���ʃo�[�j�A.png");
	CreateTextureSP("�b/ev2", 600, Center, Middle, "cg/ev/ev920�~���N�Ƒ��t�o�C�N_�l��.png");
	CreateTextureSP("�b/ev4", 600, Center, Middle, "cg/ev/ev920�~���N�Ƒ��t�o�C�N_�l���u���[.png");
	CreateTextureEXadd("�b/ev3_1", 600, 800, 276, "cg/ev/x/ev920�~���N�Ƒ��t�o�C�N_���ʃo�[�j�A_x01.png");
	Fade("�b/ev4", 0, 500, null, true);
	CreateTextureEXadd("�b/ev5", 600, -524, -330, "cg/ev/ev920�~���N�Ƒ��t�o�C�N_���ʃu���[.png");
	CreateTextureEX("�b/back", 900, Center, Middle, "cg/bg/x/bg304072_5_���]�^���[�G���x�[�^�[_�O��a_x01.png");
	Move("�b/back", 0, @-500, @-500, null, true);
	Rotate("�b/back", 0, @0, @0, 3, null,true);
	Zoom("�b/back", 0, 3000, 3000, null, true);
	SetShade("�b/back", HEAVY);
	Rotate("�b/ev2", 0, @0, @0, -20, null,false);
	Rotate("�b/ev4", 0, @0, @0, -20, null,false);

	Request("�b/*", Smoothing);

	CreateMovieSP("km01", 1000, center, middle, true, true, "dx/mvk100.ngs");
	Rotate("km01", 0, @0, 180, 20, null,true);
	Zoom("km01", 0, 4000, 4500, null, true);

	CloudZoomSmokeSet01("����",3000,"cg/ef/effi�\�I����_ef01.png");


	CreateSE("SE01","se����_�h�A�S_���J��01b");
	CreateSE("SE��","se��_���R_���Ɩ؁X01L");

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE��",500,700,0,1000,null,true);

	Delete("��w�i");
	FadeDelete("�G�F��", 1000, null, true);





//�o�C�N���o=================================

	SetVolumeEX("SE��", 2000, 300, null);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
The fresh air breezes along and brushes my cheeks&.

I see the sprawling floor of the roof and a night dark as 
black&.

Is there something here?

I watch Mink's hair blow in the wind as we walk down the 
rooftop and see a clump of black next to the water storage container&.

It's pretty large and is covered in a black cloth&.

Mink vigorously pulls off the cloth&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��11");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�l��_����_�ߎC��02");
	MusicStart("SE02",0,800,0,1000,null,false);

	Wait(600);

	CreateTextureEX("�G�d�u", 3100, Center, Middle, "cg/bg/bg307041_5_�o�C�N�r������o�C�N.jpg");
	Fade("�G�d�u", 1000, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
What was under it was a giant motorcycle&.

It's of rugged design&, tightly fitting Mink's character&.

Mink straddles into the seat&, and then pulls the ignition 
key out of his breast pocket&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateSE("SE01","se�敨_�����o�C�N_�G���W���X�^�[�g");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("�G�d�u", 500, null, true);



	Wait(700);

	CreateSE("SE02","se�敨_�����o�C�N_�G���W���ӂ���01");
	//�A�C�h�����O�p�̉�
	CreateSE("SE03","se�敨_�����o�C�N_�A�C�h�����O01L");
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",2000,1000,0,1000,null,true);

	CreateMovieEX("mv1", 2000, 120, 170, true, true, "dx/mv0003�W����04_��.ngs");
	Zoom("mv1",0,5000,5000,null,true);

	CreateColorEX("white", 10000, "FFFFFF");

	CreateTextureEX("ev80", 2000, Center, Middle, "cg/ev/ev920�~���N�Ƒ��t�o�C�N.jpg");
	SetBlur("ev80", true, 3, 500, 100, false);

	CreateTextureEX("bg90", 2000, 500, -400, "cg/ev/ev920�~���N�Ƒ��t�o�C�N_�w�i.jpg");
	CreateTextureEX("ev90", 2000, Center, Middle, "cg/ev/ev920�~���N�A�o�C�N����_�l���~���N.png");
	SetBlur("ev90", true, 3, 400, 50, false);
	SetShade("bg90", HEAVY);
	Zoom("bg90", 0, 4000, 4000, null, true);
	CreateTextureEX("bg100", 9000, center, -200, "cg/bg/bg304011_5_���]�^���[�S�i.jpg");#bg304011_5_���]�^���[�S�i=true;
	Request("bg100", Smoothing);
	//SetBlur("bg100", true, 1, 400, 50, false);

	CreateTextureEX("garasu", 10000, center, middle, "cg/ef/effi�\�I����.png");
	Zoom("garasu", 0, 1200, 1200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016b]

He starts the engine and the displays and headlights turn 
on&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",3740, @0,@0,"st�~���N_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/7000010a05">
"Get on&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/7000020a01">
"Huh?"

{	St("C",3740, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/7000030a05">
"Hurry up&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/7000040a01">
"Isn't it a one seater?"

{	St("C",3740, @0,@0,"st�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/7000050a05">
"Just get on&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/7000060a01">
"Where do you want me to sit!?"

{	St("C",3740, @0,@0,"st�~���N_�ʏ�_angry");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/7000070a05">
"Wherever you fit&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/7000080a01">
"Wherever I fit&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
How does this guy expect me to do this&.&.&.?!

But he looks like he's going to speed off soon&.

{

	CreateSE("SE01","se�l��_����_�ߎC��11");
	MusicStart("SE01",0,1000,0,1000,null,false);

}
I listen and walk up to the bike&, jumping unwillingly onto the back of the seat&.

It's too small and narrow&, I can't keep on if I don't hold on to Mink&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F�u�H���I�ƃo�C�N���i
	CreateSE("SE20","se�敨_�����o�C�N_�G���W���ӂ���01");
	CreateSE("SE21","se�敨_�����O�o�C�N_���苎��");
	MusicStart("SE20",0,700,0,1000,null,false);
	SetVolumeEX("SE03", 1000, 0, null);

	CreateTextureEX("�G�w�iyure", 3000, Center, Middle, "cg/bg/bg307031_5_�o�C�N�r������.jpg");

	MusicStart("SE21",0,700,0,1000,null,false);
	Fade("�G�w�iyure", 0, 1000, null, true);
	Shake("�G�w�iyure", 500, 0, 10, 0, 0, 1000, null, false);


{	Fw("fw���t_�ʏ�_shout2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/7000090a01">
"Whoaa!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�敨_�����o�C�N_�}����01");
	CreateSE("SE11","se�敨_�����o�C�N_���s01L");
	CreateSE("SE12","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE11",2000,400,0,700,null,true);
	Shake("�G�w�iyure", 500, 0, 10, 0, 0, 1000, null, false);
	Wait(500);
	MusicStart("SE12",0,1000,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Mink suddenly takes off&. I cling to him&, thinking I'm 
about to fall&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/7000100a01">
"Wai&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�敨_�����o�C�N_�X�s��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
I was expecting it&, but this is way too wild of a ride&.&.&.!
I'm going to get thrown off!

Mink circles around the top for who knows how many times&.

What? What is he doing?
What is he trying to do?

Both the questions and my stomach are starting to churn 
around&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/7000110a01">
"Huh?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�敨_�����O�o�C�N_�}�u���[�L01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Mink suddenly revs up on the handles and drives through 
the rooftop in a straight line&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	CreateSE("SE01","se�敨_�����o�C�N_�^�[�{�X�^�[�g01");
//	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw�~���N_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/7000120a05">
"You better clench your teeth for this&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(32);

	CreateSE("SE31","se�敨_�����o�C�N_�X�s��01");
	CreateSE("SE32","se�敨_�����O�o�C�N_���苎��");

	SetVolumeEX("SE11", 1000, 100, null);

	MusicStart("SE31",0,700,0,1000,null,false);
	MusicStart("SE32",0,700,0,1000,null,false);

	Shake("�G�w�iyure", 50000000, 0, 3, 0, 3, 1000, null, false);

	Wait(1200);
	SetFrequency("SE11", 6000, 1000, AxlDxl);
	SetVolumeEX("SE11", 3000, 500, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
A rush of wind hits me and the violent vibrations almost 
makes me bite my tongue off&.

The bike rides along the fenceless rooftop and without 
stopping-



</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(32);

	SetVolumeEX("SE11", 1000, 0, null);

	Request("�b/*", Smoothing);
	Rotate("�b/ev2", 0, @0, @0, -20, null,true);
	Rotate("�b/ev4", 0, @0, @0, -20, null,true);
	Shake("�b/ev2", 5000000, 2, 3, 0, 0, 1000, null, false);
	Shake("�b/ev4", 5000000, 2, 2, 0, 0, 1000, null, false);
	Shake("�b/ev3", 5000000, 2, 4, 0, 0, 1000, null, false);
	Shake("�b/ev3_1", 5000000, 12, 10, 0, 0, 1000, null, false);

	MoveFTP1("@�b/*",2000,10,10);

	CreateSE("SE00","se�敨_�����o�C�N_���s01L");
	CreateSE("SE01","se�敨_�����o�C�N_�^�[�{�X�^�[�g01");
	CreateSE("SE02","se�敨_�����o�C�N_�}����01");
	CreateSE("SE03","se�敨_�����o�C�N_������01");
	CreateSE("SE04","se�敨_�����o�C�N_�G���W���ӂ���02");
	CreateSE("SE10","se����_�K���X_�����01");
	CreateSE("SE��","se��_���R_���Ɩ؁X01L");



	SetVolumeEX("SE11", 1000, 0, null);
	MusicStart("SE00",1000,700,0,1000,null,false);
	MusicStart("SE01",0,700,0,1000,null,false);

//	CloudZoomSmokeStart01(3000,50,200,1000,900,750,300,850,330,Dxl1);
	CloudZoomSmokeStart01(500,30,1000,4000,900,-2500,500,1050,400,Dxl1);
	MoveCamera("�b", 4000, -300, -200, 500, Dxl2, false);

	Fade("mv1", 0, 200, null, true);

	FadeDelete("�G�w�i", 500, null, false);
	Fade("�G�w�iyure", 500,0, null, true);
	Delete("�G�w�iyure");
	Wait(3000);

	SetVolumeEX("SE01", 500, 0, null);
	SetVolumeEX("SE00", 5000, 0, null);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE04",0,500,0,1500,null,false);
	MusicStart("SE��",3000,700,0,1000,null,true);
	MoveFTP1stop();
	Rotate("�b/ev2", 400, @0, @0, 5, Axl1,false);
	Rotate("�b/ev4", 400, @0, @0, 5, Axl1,false);
	Move("�b/ev2", 4000, @0, @-100, Dxl1, false);
	Move("�b/ev4", 4000, @0, @-100, Dxl1, false);
//	MoveCamera("�b", 15000, 200, 50, 300, null, false);

	CloudZoomSmokeDelete01(500);

	Fade("mv1", 300, 0, null, false);
	Fade("�b/ev3_1", 200, 1000, null, false);
	Zoom("�b/ev1*", 300, 11000, 11000, Dxl2, false);
	Fade("�b/ev1_2", 300, 1000, null, false);
	Fade("�b/ev5", 400, 1000, Axl2, false);
	Fade("�b/back", 300, 1000, null, false);
	MoveCamera("�b", 500, -300, -100, 150, AxlDxl, true);

	MoveCamera("�b", 1400, -350, -80, 150, null, false);
	Move("ev80", 15000, @200, @200, null, false);
	Wait(600);
	Fade("ev80", 800, 1000, null, false);

	Wait(1500);

	Delete("mv1");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
&.&.&.We soar&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0059]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/7000130a01">
"Whuaa&.&.&.!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
It felt like time had stopped for a second&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����b�̊�

	Wait(1000);


//���r�d�F��������[��I�I�Ɣh��Ƀ^���[�̑��������ăo�C�N�N��

	Shake("�b/ev2", 0, 2, 3, 0, 0, 1000, null, false);
	Shake("�b/ev4", 0, 2, 2, 0, 0, 1000, null, false);
	Fade("�b/ev3_1", 4000, 0, Axl2, false);
	Move("�b/ev3*", 6000, @0, @-1100, Axl1, false);
	Move("�b/ev2", 6000, @0, @300, Axl1, false);
	Move("�b/ev4", 6000, @0, @300, Axl1, false);
	Move("�b/back", 6000, @0, @600, Dxl2,false);
	Move("�b/ev5", 6000, @400, @0, Dxl1, false);
	Rotate("�b/ev3*", 6000, @0, @0, -60, Axl1,false);
	Rotate("�b/ev2", 6000, @0, @0, -60, Axl1,false);
	Rotate("�b/ev4", 6000, @0, @0, -60, Axl1,false);
	Rotate("�b/ev5", 6000, @0, @0, -60, Axl1,false);
	Fade("�b/ev5", 2000, 0, null, false);
	MoveCamera("�b", 7000, -800, 300, 100, null, false);

	Fade("ev80", 500, 0, null, false);

	Wait(2000);

	Move("bg90", 1500, @-50, @50, null, false);
	Move("ev90", 1500, @-200, @400, null, false);

	Wait(500);

	Shake("ev90", 50000, 2, 2, 2, 2, 1000, null, false);

	Fade("bg90", 0, 1000, null, false);
	Fade("ev90", 0, 1000, null, true);

	Wait(800);

	Fade("bg90", 0, 0, null, false);
	Fade("ev90", 0, 0, null, true);

	Wait(500);

	SetVolumeEX("SE��", 1000, 0, null);

	Zoom("�b/ev1*", 500, 40000, 40000, Axl2, false);
	Zoom("�b/ev2", 500, 4000, 4000, Axl2, false);
	Zoom("�b/ev4", 500, 4000, 4000, Axl2, false);
	Zoom("�b/ev5", 500, 4000, 4000, Axl2, false);
	Zoom("�b/back", 500, 20000, 20000, Axl2, false);
	Move("�b/back", 500, @4000, @0, Axl2, false);
	Move("�b/ev1*", 500, @200, @0, Axl2, false);
	Move("�b/ev2", 500, @2500, @-300, Axl2, false);
	Move("�b/ev3*", 500, @3500, @-800, Axl2, false);
	Move("�b/ev4", 500, @2500, @-300, Axl2, false);
//	MoveCamera("�b", 500, -1000, 100, 500, Axl2, false);

	Move("bg100", 600, @0, @-1000, Axl3, false);
	Zoom("bg100", 750, 10000, 10000, Axl3, false);
	Fade("bg100", 300, 1000, null, true);

//	Wait(100);


	Fade("white", 300, 1000, Axl1, true);

	Wait(200);

	MusicStart("SE10",0,700,0,1000,null,false);
	Shake("garasu", 1000, 15, 10, 0, 0, 1000, null, false);
	Fade("garasu", 0, 1000, null, true);
	Wait(200);
	CreateColorSP("�G����", 15000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);


//���r�d�F����肬���ƃo�C�N�̃^�C���������C�鉹�ƃu���[�L��
	CreateSE("SE01","se�敨_�����o�C�N_�X�s��01");
	CreateSE("SE02","se�敨_�����o�C�N_���n01");
	CreateSE("SE03","se�敨_�����o�C�N_�G���W���ӂ���02");
	CreateSE("SE04","se�敨_�����o�C�N_�}����01");
	CreateSE("SE05","se����_������_�U�炩��01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(200);
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);

	MusicStart("SE03",0,700,0,900,null,false);
	MusicStart("SE04",0,700,0,1000,null,false);
	MusicStart("SE05",0,1000,0,900,null,false);

	Wait(1500);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Impossible&.&.&.

This is just impossible&.&.&.!

I hear the loud sound of glass shattering&, my body taking 
a hell of an impact&.

I open my eyes after closing them for what felt like an 
eternity.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

//�����t�@�C��["dm3480_vs.nss"]

}
