//<continuation number="450">
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


scene dm0420.nss_MAIN
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
	#ev042�m�C�Y�u�r�g��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0420sl.nss";

}


scene dm0420.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm001",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�w�i100", 100, -550, -478, "cg/bg/l/bg102031_1_���}�O�ʂ�_l.jpg");;

	CreateSE("SE01","se��_�K��_�����01L");
	MusicStart("SE01",3000,500,0,1000,null,true);

//�e�F�����ǂݍ���
	CreateTextureEX("�G�w�i��", 5000, Center, InBottom, "cg/bg/bg101051_5_���Z����ʂ藠�H�n06���C���������u.jpg");
	CreateTextureEX("�G�w�i�K��", 1000, Center, InBottom, "cg/ev/ev010�K��_�w�i.jpg");
	CreateTextureEX("�G�K������", 1005, Center, InBottom, "cg/ev/ev010�K��_���ʞ���.png");
	CreateTextureEX("�G�K��", 1005, Center, InBottom, "cg/ev/ev010�K��_�l���K���̂�.png");

	Move("�G�w�i100", 500, -610, -478, Dxl1, false);
	FadeDelete("��w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
When I go outside the shop&, I see a sweltering back alley 
that no one ever goes through&.

A crowd of people head inside&.

Both Noiz and I head that way as well&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);

	OnBG(10,"bg101051_5_���Z����ʂ藠�H�n06���C���������u");
	FadeBG(0,true);
	Delete("�G�w�i100");

	CreateSE("SE02","se��_�K��_�����01L");
	MusicStart("SE02",1000,700,0,1000,null,true);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_0", true);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000010a03">
"It's around here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

	CreatePlainSP("�G��", 5000);

	CreateMaskSetSPTate("�G��", 3010);//�i�b�g���A�D��x
	CreateTextureSP("�G��/�G�w�i", 1000, Center, Middle, "cg/bg/m/bg101051_5_���Z����ʂ藠�H�n06���C���������u_m.jpg");
	CreateTextureSP("�G��/�G���G", 1500, Center, Middle, "cg/fu/x/fuAM�E�T�M���h�L_�ʏ�_normal_x.png");
	CreateColorSP("�G��/�G����", 1100, "000000");

	SetShade("�G��/�G�w�i", MEDIUM);

	Fade("�G��/�G����", 0, 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013a]
When we enter the grim alleyway&, Noiz stands still&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Delete("�G��");
	CreateSE("SE01","se����_����_�����E�T�M���h�L01");
	MusicStart("SE01",0,700,0,1000,null,false);
	OpenTateMask("�G��",200, 1000,Dxl3,true);//���v���ԁA�����{���A�e���|�A�҂�
	Wait(100);
	SetVolumeEX("SE01", 0, 0, null);
	Wait(200);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013b]
And before I had noticed&, there was a Bunny Cube in his 
hand&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�e�F�����ǂݍ���
	CreateTextureEXadd("�G�K����", 1015, Center, -320, "cg/ev/ev010�K��_�l���K���O.png");
	RhymeDrawSet("�K��",2000,center,InBottom,"cg/ev/ev010�K��_�l���K���̂�.png");

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/2000020a01">
"Is that your Allmate?"

{	Fw("fw�m�C�Y_�ʏ�_normal");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000030a03">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CloseTateMask("�G��",200,Dxl3,true);//�i�b�g���A���v���ԁA�e���|�A�҂�

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
It's weird for him to have such a cute one&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0017]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000040a03">
"It'll start soon&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�e�F�����ǂݍ���
	CreateTextureEX("�G�K���Q", 1014, Center, -320, "cg/ev/ev010�K��_�l���K��.png");
	CreateTextureEX("�G�Ō�K��", 1025, Center, -320, "cg/ev/ev010�K��.jpg");
	CreateTextureEXadd("�G�K��������", 1100, Center, InBottom, "cg/ev/ev010�K��_���ʞ����O.png");
	CreateTextureEX("�G�K����������", 1004, Center, InBottom, "cg/ev/ev010�K��_���ʞ����O.png");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0018]
A dim light starts to shine shortly enough&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	CreatePlainSP("�G��", 5000);


	DeleteAllSt(0,true);

	CreateTextureSP("�G�w�i", 100, Center, InBottom, "cg/bg/l/bg101051_5_���Z����ʂ藠�H�n06_l.jpg");


	Request("�G�w�i", Smoothing);
//	SetShade("�G�w�i", MEDIUM);


	SetVertex("�G�K������*", 512, 1067);

	Zoom("�G�K������", 0, 0, 0, null, true);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);
	Move("�G�w�i", 0, @0, @-526, null, true);
	Rotate("�G�K������*", 0, @-30, @0, @0, null,true);



	SetVolumeEX("SE*", 1000, 0, null);
	Move("�G�w�i", 1300, @0, @-50, Dxl1, false);
	FadeDelete("�G��", 500, null, true);

	Wait(500);
	Fade("�G�K������", 1500, 1000, null, false);
	Wait(500);
	CreateSE("SE01","se�[��_���C��_����01");
	MusicStart("SE01",0,700,0,1500,null,false);
	Zoom("�G�K������", 200, 990, 990, Dxl3, false);
	Wait(190);
	Zoom("�G�K������", 300, 1000, 1000, Dxl1, false);
	Wait(700);
	CreateSE("SE01","se�[��_���C��_�����G���J�E���g01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�w�i�K��", 0, 1000, Dxl1, false);
	DrawTransition("�G�w�i�K��", 500, 0, 1000, 1000, Dxl1, "cg/data/circle_17_00_0.png", false);
	Fade("�G�K��������", 500, 500, Dxl1, false);

	Move("�G�w�i�K��", 1000, @0, @200, Dxl1, false);
	Rotate("�G�K������*", 1000, @30, @0, @0, Dxl1,true);

	Wait(1000);

	CreateSE("SE01","se�[��_���C��_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�K��������", 500, 1000, Dxl1, false);
	RhymeDrawFade("�K��");
	Fade("�G�K��", 200, 1000, null, true);
	Fade("�G�K����������", 500, 1000, Dxl3, false);
	Fade("�G�K��������", 500, 0, Dxl1, true);

	Wait(300);

	Move("�G�K��", 1000, @0, @-30, Dxl1, true);


//	Wait(300);


	Move("�G�K��", 3000, @0, -320, AxlDxl, false);
	Move("�G�K������*", 3000, @0, -320, AxlDxl, false);
	Move("�G�w�i�K��", 3000, @0, -320, AxlDxl, true);
	Delete("�G�K������");
	Delete("�G�K��������");

	CoilStartSet();
	Wait(500);



	CreateSE("SE01","se�[��_���C��_�����G���J�E���g01");
	MusicStart("SE01",0,700,0,1300,null,false);
	CoilStartFade();
	Fade("�G�K����", 300, 1000, Dxl1, false);
	Fade("�G�K���Q", 300, 1000, Dxl1, true);
	Wait(50);
	Fade("�G�K��*", 1000, 0, Dxl1, false);
	Fade("�G�Ō�K��", 1000, 1000, Dxl1, true);
	Delete("�G�K��*");
	Delete("�G�w�i�K*");


	Move("�G�Ō�K��", 1500, @0, 0, Axl1, false);

	Wait(500);
	Fade("�G�w�i��", 1000, 1000, null, true);

	CoilIntoDelete();
	Delete("�G�Ō�*");
	Delete("�K��*");
	Delete("�G�w�i*");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
A ring of light appears in the empty space&, and Usui shows from its ankles up&.

{
	SoundPlay("@dm009",0,450,true);
	CreateSE("SE01","se��_�K��_�r����^��01");
	MusicStart("SE01",0,700,0,1000,null,false);
}

The surrounding participants raise their voices in 
excitement&, and even more people come when they hear them&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000050a03">
"Just like I said&."
</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/2000060a01">
"&.&.&.Yeah&."

{	SetVolumeEX("SE*", 3000, 0, null);}
{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000070a03">
"Go up and take a look&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/2000080a01">
"I said I never liked this in the first place&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000090a03">
"Even just this much?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	DeleteAllSt(200,true);

//�e�F���V��
	CreateSE("SE01","se�[��_�R�~�J��_�v�j�v�j01");
	MusicStart("SE01",0,700,0,1300,null,true);

	CreateTextureEX("�G�w�i", 5000, Center, Middle, "cg/bg/l/bg101051_5_���Z����ʂ藠�H�n06_l.jpg");
	Move("�G�w�i", 3500, @-200, @0, AxlDxl, false);
	Fade("�G�w�i", 500, 1000, null, true);
	DeleteAllSt(0,true);

	Wait(1500);

	SetVolumeEX("SE*", 1000, 0, null);
	FadeDelete("�G�w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
Noiz slightly raises his eyebrows&. And then&, behind me&, my bag is being pulled down on by something on it&.

What was pulling on the strap was&.&.&. the Bunny Cube&.

When did it get there&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/2000100a01">
"You&.&.&.!"

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_smile2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000110a03">
"What will you do now?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
The audience crowds together&, and I hold tightly onto my 
bag; there's no way to escape anymore&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/2000120a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���x�j���������ł��āA�E�T�M�L���[�u�ƂԂ���

	DeleteFw();

	CreateSE("SE01","se����_����_�H�΂�������01");
	MusicStart("SE01",0,700,0,1800,null,false);

	Wait(600);
	SetVolumeEX("SE01", 500, 0, null);

	CreateSE("SE02","se�l��_�Ռ�_�@��01");
	MusicStart("SE02",0,500,0,1500,null,false);
	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 150, 1000, Dxl3, true);
	DeleteAllSt(100,true);
	FadeDelete("�G�F��", 150, Dxl3, true);

	Fw("fwAM�E�T�M���h�L_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm04/2000130c09">
"P!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE03","se�l��_����_�͂�01");
	MusicStart("SE03",0,700,0,900,null,false);
	CreateSE("SE04","se�l��_�Ռ�_�@��02");
	MusicStart("SE04",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
At that moment&, something glides to my bag and hits the 
cube that's pulling down on it&.

The surrounding crowd is in a commotion - it's complete 
chaos&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 1005, -436, 0, "cg/bg/m/bg101051_5_���Z����ʂ藠�H�n06_m.jpg");
	SetShade("�G�w�i��", MEDIUM);

	Move("�G�w�i*", 500, @-100, @0, AxlDxl, false);

	FadeDelete("�G��", 500, null, true);

	St("C",1740, @0,@0,"bu�g��_�ʏ�_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000140a02">
"Yo&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
The one who picks my bag up is Koujaku&.

So the thing that hit Noiz's cube must've been Beni&.

The Beni-Shigure members are here too&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/2000150a01">
"Koujaku&.&.&."

{	St("C",1740, @0,@0,"bu�g��_�ʏ�_smile");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000160a02">
"Aoba&, how are you today? Still on delivery duty?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i*");
	DeleteSt("C", 0,true);

	FadeDelete("�G��", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
While saying that&, Koujaku shoots a leering look Noiz's 
way&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",740, @30,@0,"st�g��_�ʏ�_cool2");
	FadeSt("MR",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000170a02">
"Why are you here?"

{	St("ML",740, @-30,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("ML",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000180a03">
"I have no reason to tell you&."

{	St("MR",740, @30,@0,"st�g��_�ʏ�_cool");
	FadeSt("MR",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000190a02">
"Rhyme&, huh?"

{	St("ML",740, @-30,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("ML",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000200a03">
"I have the same question&. Why are you here&, anyway?
 Braindead Rib players like you would die in an instant
 in Rhyme&."

{	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm04/2000210e47">
"Whaddya' say!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",740, @30,@0,"st�g��_�ʏ�_cool2");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000220a02">
"Stop that&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
Koujaku holds back his overexcited teammate&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",740, @30,@0,"st�g��_�ʏ�_cool");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000230a02">
"Don't act like a little brat here&. You're going too far&."

{	St("ML",740, @-30,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("ML",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000240a03">
"But he is a brat&."

{	St("MR",740, @30,@0,"st�g��_�ʏ�_angry4");
	FadeSt("MR",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000250a02">
"Don't get carried away&."

{	St("ML",740, @-30,@0,"st�m�C�Y_�ʏ�_normal3");
	FadeSt("ML",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000260a03">
"Whatever&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",740, @30,@0,"st�g��_�ʏ�_cool");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000270a02">
"Just talking to you makes me hate Rhyme even more&."

{	St("ML",740, @-30,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("ML",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000280a03">
"Go ahead&. No one cares about Rib anymore&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
&.&.&.This somehow took a turn for the worst&.

Their serious attitude spills into the crowd&, and both 
Koujaku and Noiz's members begin to crowd together&.

Rib vs Rhyme&. They stand across and scowl at each other&, 
their patience almost drained dry&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0076]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/2000290a01">
"Hey&, you two need to&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",740, @-30,@0,"st�m�C�Y_�ʏ�_cool2");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0077]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000300a03">
"You know&, your whole muscle and pride thing has been
 outdated for a while now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",740, @30,@0,"st�g��_�ʏ�_cool2");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000310a02">
"Fighting in your head isn't anything special&. It's just
 your way of escaping the real world&."

{	St("ML",740, @-30,@0,"st�m�C�Y_�ʏ�_normal3");
	FadeSt("ML",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000320a03">
"It's hard to get through the head of someone with no
 brain&. No reason to keep on talking&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm04/2000330a01">
"Hey&.&.&."

{	St("MR",740, @30,@0,"st�g��_�ʏ�_cool");
	FadeSt("MR",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000340a02">
"I don't want to hear that from some bean sprout with a big
 head&."

{	St("ML",740, @-30,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("ML",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000350a03">
"I'm not a bean sprout&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",740, @30,@0,"st�g��_�ʏ�_pride");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000360a02">
"Is that so? You look enough like one to me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
He's using that tone&.&.&. Like when he came into my room and we began to argue&.

Noiz keeps his mouth shut&, and Koujaku silently stares&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",740, @30,@0,"st�g��_�ʏ�_angry");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000370a02">
"Aren't you 'Ruff Rabbit'? Mujina's Rhymer team? Looks like you made it all the way over here&."

{	St("MR",740, @30,@0,"st�g��_�ʏ�_angry4");
	FadeSt("MR",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000380a02">
"You predict when and where Rhyme starts; are you happy
 with the small pennies you make out of that?"

{	St("ML",740, @-30,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("ML",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000390a03">
"It's buisness&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",740, @-30,@0,"st�m�C�Y_�ʏ�_normal3");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000400a03">
"There's a lot of people around here that want that sort of information&."

{	St("ML",740, @-30,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("ML",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000410a03">
"So we arrange a few things&. We use our heads for different reasons than you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
Noiz and Koujaku glare at each other with a silent 
intensity&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateMaskSetSP("�G�}�X�N�E", 2000, 0, 0, "ci�X���b�V��_05_01", true, "ci�X���b�V��_05_00z");
	CreateTextureSP("�G�}�X�N�E/�G���摜", 1010, -613, 254, "cg/ev/l/ev042�m�C�Y�u�r�g��_l.jpg");
	Request("�G�}�X�N�E", Smoothing);
	Request("@�G�}�X�N�E�g", Smoothing);
	Request("�G�}�X�N�E/�G���摜", Smoothing);
	Zoom("�G�}�X�N�E", 0, 1050, 1050, null, true);
	Zoom("@�G�}�X�N�E�g", 0, 1050, 1050, null, true);
	Zoom("�G�}�X�N�E/�G���摜", 0, 1500, 1500, null, true);
	Rotate("�G�}�X�N�E", 0, 180, @0, 360, null, true);
	Rotate("@�G�}�X�N�E�g", 0, 180, @0, 360, null, true);

	Move("�G�}�X�N�E/�G���摜", 500, @0, @-100, Dxl1, false);
	DrawDelete("�G��", 500, 100, null, "slide_02_01_0", true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0104]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000420a02">
"Looks like I'll just have to kick your ass in one shot&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateMaskSetSP("�G�}�X�N��", 2000, 0, 0, "ci�X���b�V��_05_00", true, "ci�X���b�V��_05_00z");
	CreateTextureSP("�G�}�X�N��/�G���摜", 1010, -356, 230, "cg/ev/l/ev042�m�C�Y�u�r�g��_l.jpg");
	Request("�G�}�X�N��", Smoothing);
	Request("�G�}�X�N��/�G���摜", Smoothing);
	Request("@�G�}�X�N���g", Smoothing);
	Zoom("�G�}�X�N��", 0, 1050, 1050, null, true);
	Zoom("@�G�}�X�N���g", 0, 1050, 1050, null, true);
	Zoom("�G�}�X�N��/�G���摜", 0, 1500, 1500, null, true);
	Rotate("�G�}�X�N��", 0, 180, @0, 360, null, true);
	Rotate("@�G�}�X�N���g", 0, 180, @0, 360, null, true);

	Move("�G�}�X�N��/�G���摜", 500, @0, @-100, Dxl1, false);
	DrawDelete("�G��", 500, 100, null, "slide_02_01_0", true);

	Wait(500);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0105]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000430a03">
"You're full of shit&, but I'll let you eat those words&.
 I'll beat you to a pulp&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE11","se��_�K��_�r����^��01");
	MusicStart("SE11",0,700,0,1000,null,true);

	CreateSE("SE13","se��_�K��_�����01L");
	MusicStart("SE13",3000,500,0,1000,null,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/ev/ev042�m�C�Y�u�r�g��.jpg");

	FadeDelete("@�G�}�X�N���g",10,null);
	FadeDelete("@�G�}�X�N�E�g",10,null);
	FadeDelete("�G�}�X�N�g*",10,null);

	Fade("�G�w�i��", 10, 0, null, false);
	Move("�G�}�X�N�E",500,@1024,@0,Dxl1,false);

	Move("�G�}�X�N��",500,@-1024,@0,Dxl1,true);

	CreateSE("SE12","se��_�K��_�r����s��01");
	MusicStart("SE12",0,700,0,1000,null,true);

	Delete("�G�w�i��");
	Delete("�G�}�X�N*");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0106]
The surrounding Ribsteez and Rhymers let out booming war 
cries&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
Before I knew it&, I was able to see the Rhymers collected  around Usui watch two people fighting&.

But more people began to turn our way&.

More and more&.
What's going to happen next&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm04/2000440a02">
"I'll make sure that you can't open your mouth to make
 cheeky comments ever again&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm04/2000450a03">
"Yeah&, right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 5000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0114]
Koujaku keeps firing provocations at Noiz&, who is just 
taking them with a small smirk; he tilts his head and 
snorts&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0420sl.nss"]

}
