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


scene dm5440_vs.nss_MAIN
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
	$GameName = "dm5450_vs.nss";

}


scene dm5440_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304081_5_���]�^���[���u����");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/4000010a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Ren?

Did he start up?

{
	CreateSE("SE01","se�l��_����_�ߎC��03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);
}
In high spirits&, I open my bag and take out Ren&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/4000020a01">
"Hey&, Ren&. Are you all right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
When I go to pick him up&.&.&.
I stop my hands before I can touch him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	CreateColorEX("�G�F��", 5000, "000000");
	DrawTransition("�G�F��", 0, 400, 400, 200, null, "cg/data/slide_05_00_0.png", true);
	CreateTextureEX("�G�w�i", 100, Center, -576, "cg/bg/bg304081_5_���]�^���[���u����.jpg");
	CreateTextureEX("�L����", 100, Center, Middle, "cg/st/x/stAM�@_�ʏ�_rage_x.png");
	Zoom("�G�w�i", 0, 3000, 3000, null, true);
	SetShade("�G�w�i", HEAVY);

	Move("�G�w�i", 0, @100, @0, null, true);
	Move("�L����", 0, @200, @0, null, true);

	Move("�G�w�i", 800, @-100, @0, Dxl1, false);
	Move("�L����", 800, @-200, @0, Dxl1, false);

	Fade("�G�F��", 300, 1000, null, false);
	Fade("�G�w�i", 300, 1000, null, false);
	Fade("�L����", 300, 1000, null, true);

	Wait(1200);
	Shake("�L����", 2000, 1, 0, 0, 0, 1000, null, false);

//{	Fw("fwAM�@_�ʏ�_rage");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm54/4000030a06">
"Grrrrrrrr!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Ren keeps his distance from me&, his hackles up and his 
teeth bared&, growling deep and low&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/4000040a01">
"Ren&.&.&."

{	Fw("fwAM�x�j_�ʏ�_normal");}
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm54/4000050b16">
"You&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{
	Shake("�L����", 400, 0, 5, 0, 0, 1000, null, false);

//	Fw("fwAM�@_�ʏ�_rage");
}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm54/4000060a06">
"Grrr!"

When I reach out to Ren&, his entire body shakes as he 
bellows at me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm54/4000070a04">
"Ren-san? You seem odd&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/4000080a03">
"&.&.&.Isn't he different from before?"

{	Fw("fw�~���N_�ʏ�_normal2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm54/4000090a05">
"Did you replace his AI chip?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 6000);
	Delete("�G�F��");
	Delete("�G�w�i");
	Delete("�L����");
	FadeDelete("�G��", 500, null, true);

	SetVolumeEX("@dm*", 500, 0, null);

	Wait(600);

//�������u���o�F���C���A�˓��O�̂܂ǂ�݁v
	CreateSE("SE01","se�[��_���C��_�����G���J�E���g01");
	CreateSE("SE02","se�퓬_�Ռ�_�h�ǔ���01");

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	CreatePlainEX("�G��", 100);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("@�G�F��", 300, 1000, Axl3, true);
	Wait(100);
	Fade("@�G��", 0, 1000, null, true);
	DrawEffect("@�G��", 5000, "Ripple", 500, 100, null);
	Delete("@OnBG*");
	FadeDelete("@�G�F��", 3000, null, false);
	Wait(1000);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/4000120a01">
"&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(500);
	WaitAction("@�G�F��", null);

//�������u���o�F���C����Ԃւ̓˓��Ńt�@�C���I���v
	CreateMaskEX("�G��", 0, Center, Middle, "cg/data/slide_02_00_1.png", false);
	SetVertex("�G��", center, top);
	CreateColorEX("�G��/�G�F��", 5000, "000000");

	Zoom("�G��", 2000, 1000, 2000, Axl3, false);
	Move("�G��", 20000, @0, 1152, null, false);

	Fade("�G��/�G�F��", 500, 1000, null, false);
	Zoom("�G��", 5000, 1000, 20000, AxlDxl, true);

	CreateSE("@EFWIN/SE01","se�[��_���C��_�����g01L");
	Request("@EFWIN/SE01", Lock);
	MusicStart("@EFWIN/SE01",2000,700,0,500,null,true);
	$nextrhymescene="dm5450_vs.nss";

//�����t�@�C��["dm5450_vs.nss"]

}
