//<continuation number="70">
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


scene dm0641.nss_MAIN
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
	$GameName = "dm0650_vs.nss";

}


scene dm0641.nss
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
//���u�m�C�Y�ׂ̗ɕ��ԁv��I�񂾏ꍇ
//==============================================

//�������u���F�m�C�Y�̓A�i���O�D��������J�^�J�^�����Ȃ�悤�ɐݒ肵�Ă�񂾂�v
	CreateSE("SE02","se����_�p�\�R��_�L�[�{�[�h����01");
	MusicStart("SE02",3000,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I approach Noiz and take a look at his hands&.

He doesn't take a single look away from the monitor&, and 
keeps typing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 200, 0, null);

	Fw("fw�m�C�Y_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/4100010a03">
"&.&.&.What?"

{	Fw("fw���t_�ʏ�_confuse");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/4100020a01">
"&.&.&.Nothing&, I just was wondering how you were doing&."

{	Fw("fw�m�C�Y_�ʏ�_normal2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/4100030a03">
"So you don't trust me?"

{	FwPro("fw���t_�ʏ�_worry4",3700,"fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/4100040a01">
"It's not that&. I'm just nervous&.&.&. Sorry for bothering
 you when you're so focused&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw�m�C�Y_�ʏ�_cool2",3300,"fw�m�C�Y_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/4100050a03">
"I'm not gonna screw up&, so whatever&. Don't blow it when
 we're out there&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/4100060a01">
"&.&.&.I know&."

{	Fw("fw�m�C�Y_�ʏ�_normal3");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm06/4100070a03">
"Do you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
&.&.&.How uncute&.

But it was my fault for interrupting him in the first 
place&. Without saying another word&, I left&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0650_vs.nss"]

}
