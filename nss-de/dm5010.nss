//<continuation number="20">
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


scene dm5010.nss_MAIN
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
	$GameName = "dm5020_vs.nss";

}


scene dm5010.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm009",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg101022_5_���Z����ʂ藠�H�n02");
	FadeBG(0,true);

	Delete("��w�i");

	CreateSE("SE12","se�l��_����_����01L");//�������u�r�d�Fse�l��_����_����01L�v
	MusicStart("SE12",0,700,0,1000,null,true);

	DrawDelete("�G�F��", 250, 100, null, "slide_01_01_1", true);

//==============================
//���@�̏ꍇ�F
//==============================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I did nothing but run to try to shake off the police&.

{	SetVolumeEX("SE12", 1000, 0, null);}
How long have I even been running for&.&.&.?

En route&, I come to a stop and check my surroundings&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
}
I don't hear any footsteps after us&.
Did I shake them off?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/1000010a01">
"Ha&, ha&.&.&. Haah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
I lean against a nearby wall&, taking rough&, heavy 
breaths&. I'm completely out of air after running 
at full speed&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���O����������ȑ����i�ӂ���Ă�j
	CreateSE("SE11","se�l��_����_����01�ӂ��L");//�������u�r�d�Fse�l��_����_����01�ӂ��L�v
	MusicStart("SE11",3000,700,0,900,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
As I catch my breath&, I hear something&.

I look and see a man walking in front of me&.

He's grunting and making odd noises&, probably completely 
wasted&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE11", 250, 0, null);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/1000020a01">
"Is he drunk?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();
	PrintBG("��w�i", 30000);
	OnBG(10,"bg101022_5_���Z����ʂ藠�H�n02");
	FadeBG(0,true);
	FadeDelete("��w�i", 0, null, true);

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
	Fade("@�G�F��", 3000, 0, null, true);
	Delete("@�G�F��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I felt my chest sink right at that moment&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/2000010a01">
"!"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm50/2000020a06">
"Aoba!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

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
	$nextrhymescene="dm5020_vs.nss";

//�����t�@�C��["dm5020_vs.nss"]

}
