//<continuation number="120">
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


scene dm1150.nss_MAIN
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
	//#ev900�����P�l�̑��t=true;

	#bg303024_5_��y�{�݃N���u�t���A=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1160.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=2;

}


scene dm1150.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg303021_5_��y�{�݃N���u�t���A");
	FadeBG(0,true);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/l/bg303021_5_��y�{�݃N���u�t���A_l.jpg");

//���C�g����===========================================================
	CreateColorEXadd("�G�F���C�g1", 1109, "883355");
	CreateColorEXadd("�G�F���C�g2", 1109, "448800");
	CreateColorEXadd("�G�F���C�g3", 1109, "005588");
	DrawTransition("�G�F���C�g1", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("�G�F���C�g2", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("�G�F���C�g3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);

	$���C�g�i�b�g���P = @�G�F���C�g1;
	$���C�g�i�b�g���Q = @�G�F���C�g2;
	$���C�g�i�b�g���R = @�G�F���C�g3;
	$���C�g�i�b�g�����x = 500;
	$���C�g�^�C�� = 500;

	CreateProcess("�v���Z�X���C�g�P", 150, 0, 0, "ColorLightLoopLive2");
	SetAlias("�v���Z�X���C�g�P","�v���Z�X���C�g�P");

	CreateTextureSP("�v���Z�X���]�G�w�i", 100, Center, Middle, "cg/bg/bg303021_5_��y�{�݃N���u�t���A.jpg");

	CreateLoopFade("�v���Z�X���]��",200,true,AddRender,cg/bg/bg303024_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303022_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg);
	CreateLoopFade2("�v���Z�X���]���[�U�[",150,true,false,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg,cg/bg/bg303023_5_��y�{�݃N���u�t���A.jpg);

	CreateSurface("�GSuf",300,0,0,false);
	SetAlias("�GSuf", "�GSuf");
	SetSurface("�v���Z�X���]*","�GSuf");
	Zoom("�GSuf", 0, 1500, 1500, null, true);
	Request("�GSuf", Smoothing);

	Move("�GSuf", 0, 100, @0, null, true);


	GoLoopFade("@�v���Z�X���]��",100);
	GoLoopFade2("@�v���Z�X���]���[�U�[",137);
	Request("@�v���Z�X���C�g�P", Start);

	Lens_Set("�����Y�P",5000,-300,-300,1500,1500);
	Lens_Start(3500);
	//MoveFFP1("@�GSuf",20000);

	Delete("��w�i");

//�\���J�n

	SoundPlay("@dm007a",0,450,true);


	Fw("fwAM�@_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm11/5000010a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DrawTransition("�G�F��", 2000, 1000, 400, 300, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(500);
	Zoom("�GSuf", 2000, 2100, 2100, AxlDxl, false);
	DrawTransition("�G�F��", 2000, 400, 0, 300, AxlDxl, "cg/data/slide_05_00_0.png", false);
	Fade("�G�F��", 2000, 0, null, true);
	Delete("�G�F��");


{	Fw("fw���t_�ʏ�_shock3");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/5000020a01">
"Huh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
I somewhat regain my senses&, and just see a bunch of shoes squirming this way&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�w�i����", 1500, -50, Middle, "cg/bg/l/bg303024_5_��y�{�݃N���u�t���A_l.jpg");
	CreateTextureEXadd("�G�w�i����2", 1500, -50, Middle, "cg/bg/l/bg303024_5_��y�{�݃N���u�t���A_l.jpg");

	MoveFFP1("@�G�w�i����*",3500);

	Fade("�G�w�i����", 0, 1000, null, true);
	Fade("�G�w�i����2", 0, 1000, null, true);
	Fade("�G�w�i����", 1000, 0, Axl2, false);
	Fade("�G�w�i����2", 1000, 0, Axl2, false);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
{	Fw("fwm����C_�ʏ�_normal");}
//�y�����q�`�z
<voice name="�����q�`" class="�����q�`" src="voice/dm11/5000030e24">
"Heeey&, are you okay?"

{
	Move("�G�w�i����", 0, -950, @0, null, true);
	Move("�G�w�i����2", 0, -950, @0, null, true);

	Fade("�G�w�i����", 0, 1000, null, true);
	Fade("�G�w�i����2", 0, 1000, null, true);
	Fade("�G�w�i����", 1000, 0, Axl2, false);
	Fade("�G�w�i����2", 1000, 0, Axl2, false);
	Fw("fwm���C_�ʏ�_normal");}
//�y�j���q�`�z
<voice name="�j���q�`" class="�j���q�`" src="voice/dm11/5000040e22">
"You're really in the way if you lay down there!"

{
	Move("�G�w�i����", 0, -50, @0, null, true);
	Move("�G�w�i����2", 0, -50, @0, null, true);

	Fade("�G�w�i����", 0, 1000, null, true);
	Fade("�G�w�i����2", 0, 1000, null, true);
	Fade("�G�w�i����", 1000, 0, Axl2, false);
	Fade("�G�w�i����2", 1000, 0, Axl2, false);
	Fw("fwm����C_�ʏ�_normal");}
//�y�����q�`�z
<voice name="�����q�`" class="�����q�`" src="voice/dm11/5000050e24">
"He looks sooo dumb! Ahahahaha!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	CreateSE("SE01b","se�l��_�Ռ�_�@��02");
	CreateSE("SE02","se�l��_�Ռ�_�]�|02");

	Shake("�GSuf", 400, 10, 5, 0, 0, 1000, Dxl1, false);
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Shake("�GSuf", 400, 8, 15, 0, 0, 1000, Dxl1, false);
	MusicStart("SE01b",0,700,0,1000,null,false);

	Wait(700);
	Shake("�GSuf", 400, 12, 5, 0, 0, 1000, Dxl2, false);
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
All I hear is the sound of slurring voices chattering away above me&.

They ignore my existance and walk over and on me like it's nothing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);



{	Fw("fw���t_�ʏ�_pinch");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/5000060a01">
"Owowow&.&.&. Shit&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
I try to get myself up&, but I have no strength left in my 
arms&.

I can at least get my stomach and throat off the floor&, 
but I feel awful&. My headache is killing me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwAM�@_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm11/5000070a06">
"Aoba&, don't push yourself&. Your nerves are temporarily
 impaired&."

{	Fw("fw���t_�ʏ�_pinch");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm11/5000080a01">
"I know that already&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm���C_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�j���q�`�z
<voice name="�j���q�`" class="�j���q�`" src="voice/dm11/5000090e22">
"Hey&, I said you were in the way&. Hurry up or I'll kick
 your ass out&."

{	Fw("fwm����C_�ʏ�_normal");}
//�y�����q�`�z
<voice name="�����q�`" class="�����q�`" src="voice/dm11/5000100e24">
"Ahahaha&, go aheaad! Do iiit&. Looks like he can't even
 move anyway&."

{
//���r�d�F�Ђ�[�Ђ�[�A�ƂЂ₩���̌��J
	CreateSE("SE01","se�l��_����_���J01");
	MusicStart("SE01",0,700,0,1000,null,false);
}

{	Fw("fwm���C_�ʏ�_normal");}
//�y�j���q�`�z
<voice name="�j���q�`" class="�j���q�`" src="voice/dm11/5000110e22">
"Hey&, brooooo&. Are you alive?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	DeleteFw();

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "000000");
	Wait(30);
	Fade("�G�F��", 70, 0, null, true);
	Wait(300);
	Fade("�G�F��", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
Someone grabs my arm and pulls me up&.

I have to get away&.&.&.

But my&.&.&. head hurts so much&.
It's throbbing so hard that I can't even think&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040a]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm11/5000120a06">
"Aoba!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 500, 0, null);
	Wait(400);

	Request("�v���Z�X���C�g�P", Stop);
	Delete("�G�F���C�g*");
	Delete("�����Y*");

//�����Ƀ��x���F�Q
//��������A������Ɠ���
	//���ɃG�t�F�N�g(0)
$HALevel=2;
	HAFade(2000, 0,false);

//�������t�̐�
//�������u���o�F�����t�̗U�f�v

/*
	CreateTextureSP("�G�d�u", 1100, Center, Middle, "cg/ev/ev900�����P�l�̑��t.jpg");
	CreateColorSP("�G�����B", 1110, "000000");
	DrawTransition("�G�����B", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);
	Wait(16);
	Fade("�G�F��", 0, 0, null, true);
	Wait(30);
	Fade("�G�F��", 200, 1000, null, false);
*/

	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,-110,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",1000,1000);

	CreateColorSP("�G�������t�U�f���B", 1110, "000000");
	DrawTransition("�G�������t�U�f���B", 1, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f", 0, 1000, null, true);

	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(100,false);

//�������u���o�F�A�U�i�G����TypeBeginF��SetTextM�𗬗p�������ȁv

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040b]
�@�\�\�\�\�@Destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	TemptationAobaSet("�G�������t�U�f",1100,Center,-190,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",1100,1100);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE81","se�l��_����_�ɂ�01");
	MusicStart("SE81",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(100,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
�@�\�\�\�\�@Destroy�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	TemptationAobaSet("�G�������t�U�f",1100,Center,-230,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",1300,1300);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE81","se�l��_����_�ɂ�01");
	MusicStart("SE81",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(100,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
�@�\�\�\�\�@Destroy everything�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	TemptationAobaSet("�G�������t�U�f",1100,Center,-340,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",1600,1600);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	CreateSE("SE81","se�l��_����_�ɂ�01");
	MusicStart("SE81",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(100,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
�@�\�\�\�\�@If you do�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	ClearFadeAll(1000, true);
	Wait(500);

//�����t�@�C��["dm1160.nss"]

}
