//<continuation number="60">
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


scene dm0682_vs.nss_MAIN
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
	$GameName = "dm0690_vs.nss";

}


scene dm0682_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg402041_1_��������֎~���H��ʘH");
	FadeBG(0,true);

//���F�a�f�l�����p������
	SoundPlay("@dm009",0,450,true);

	FadeDelete("��w�i", 0, null, true);

//==============================================
//���u�~���N�ɏ]���v��I�񂾏ꍇ
//==============================================

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/8200010a01">
"Clear&, I'm counting on you! Do what Mink says!"

{
	St("C",740, @0,@0,"st�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);
}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/8200020a05">
"If you're as useless as you were last time&, I'll be in
 trouble&."

{
	DeleteAllSt(180,true);
	Fw("fw�N���A_�ʏ�}�X�N����_normal");
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/8200030a04">
"Understood! If that's what you wish&, Master!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE01",0,700,0,700,null,false);
	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�t���b�V����", 100, null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
Another black-clothed man starts to come closer&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
//	FadeSt("C",200,true);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
	ClearComicNext(20001,68, 331,25,"ev");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/8200040a04">
"Ahhh! Please stoooop!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�[��_�Ō�_�M���O�q�b�g01");//�������u�r�d�Fse�[��_�Ō�_�M���O�q�b�g01�v
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");
	Wait(30);
	DeleteAllSt(0,true);
	FadeDelete("�G�t���b�V����", 100, null,true);

	CreateSE("SE02","se�l��_�Ռ�_�]�|01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(500);

	St("C",740, @0,@0,"st�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/8200050a05">
"Hurry up and go&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/8200060a01">
"&.&.&.Sorry!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//�����t�@�C��["dm0690_vs.nss"]

}
