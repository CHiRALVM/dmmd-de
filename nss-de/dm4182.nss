//<continuation number="50">
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


scene dm4182.nss_MAIN
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
	$GameName = "dm4190.nss";

}


scene dm4182.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm002",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(0,true);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);

//===========================================
//�u�N���A�̌������������v�̏ꍇ
//===========================================

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/8200010a01">
"Well&, the entire thing just had me on edge&. I didn't know
 what you were thinking either&."

{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/8200020a04">
"I really can't forgive anyone hurting you&, Master&. If I'm
 the one hurt that's fine&, but I can't allow it to be you&."

{
	Fw("fw���t_�ʏ�_serious");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/8200030a01">
"But you still went too far&. I don't know why you turned
 like that&, but you were pretty scary back there&."

{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/8200040a04">
"I was?"

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/8200050a01">
"You were&. And when you took on that guy with the glasses&,
 I thought you were going to kill him!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm4190.nss"]

}
