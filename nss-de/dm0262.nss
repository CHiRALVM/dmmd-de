//<continuation number="100">
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


scene dm0262.nss_MAIN
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
	$GameName = "dm0270.nss";

}


scene dm0262.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm013",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�w�i110", 110, 0, -572, "cg/bg/l/bg104031_5_���t���_l.jpg");

	CreateTextureSP("�G�d�u111", 111, -250, -268, "cg/ev/m/ev026�@�����e_m.jpg");

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6200010a01">
"No&, not really&. I just think it's a bit funny&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/6200020a06">
"&.&.&.&.&."

{
	FadeDelete("�G�d�u*", 500, null, true);

	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6200030a01">
"? What is it?"

{
	Fw("fwAM�@_�ʏ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/6200040a06">
"I'm grateful to you five million times over&, baby&."

{
	Fw("fw���t_�ʏ�_shock");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6200050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6200060a01">
"&.&.&.What the heck?"

{
	Fw("fwAM�@_�ʏ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/6200070a06">
"I tried to change the wording a little&, how was it?"

{
Fw("fw���t_�ʏ�_cheese");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6200080a01">
"&.&.&.Pft&. Ahahaha!"

{
	Fw("fwAM�@_�ʏ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm02/6200090a06">
"Aoba?"

{
	Fw("fw���t_�ʏ�_cheese");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/6200100a01">
"Hahaha&, no&, I'm sorry&. You're better off being how
 you've always been&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//�����t�@�C��["dm0270.nss"]

}
