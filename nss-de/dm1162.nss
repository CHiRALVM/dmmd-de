//<continuation number="0">
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


scene dm1162.nss_MAIN
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
	$GameName = "dm1170.nss";

}


scene dm1162.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	//�����݁FBGM�F�؂Ȃ��n
	SoundPlay("@dm012",0,450,true);

	OnBG(10,"bg303021_5_��y�{�݃N���u�t���A");
	FadeBG(0,true);

//�}�N���E�v���Z�X�n���F�X�L�b�v�Ή��p==========================
	CreateSurface("�GSuf",300,0,0,false);
	SetAlias("�GSuf", "�GSuf");
	SetSurface("@dm1160_�v���Z�X���]*","�GSuf");
	SetBlur("�GSuf", true, 3, 50, 500, false);
	Fade("@dm1160_�v���Z�X���]�G�w�i", 0, 1000, null, true);

	GoLoopFade("@dm1160_�v���Z�X���]��",100);
	GoLoopFade2("@dm1160_�v���Z�X���]���[�U�[",137);
	Request("@�v���Z�X���C�g�P", Start);

	Delete("��w�i");
//�}�N���E�v���Z�X�n���F�X�L�b�v�Ή��p==========================

//===========================================
//�u���͂łȂ�Ƃ�����v�̏ꍇ
//===========================================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{	FadeDelete("��w�i", 1000, null, true);}
I can't let myself be any more of a burden&.

{
	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,400,0,1200,null,false);
}
I sort of get myself to stand up on my own&.

But&.&.&.

{
	CreateSE("SE01","se�l��_�Ռ�_�@��02");
	MusicStart("SE01",0,600,0,1300,null,false);
}
My legs are shaking&, and I end up holding onto Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm1170.nss"]

}
