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


scene dm5180.nss_MAIN
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
	$GameName = "dm5190.nss";

}


scene dm5180.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 10, "000000");

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/ef/efbg����01.jpg");
	CreateTextureSPsub("�G�w�i��", 101, Center, Middle, "cg/ef/efbg����01.jpg");

	Zoom("�G�w�i", 0, 1200, 1200, null, true);

	Fade("�G�w�i��", 0, 800, null, true);

	DrawEffect("�G�w�i", 10000, "LowWave", 0, 150, null);

	CreateSE("SE01","se�[��_����_������01L");
	MusicStart("SE01",1000,100,0,1000,null,true);

	FadeDelete("��w�i", 1000, null, true);

	Wait(1000);

//�̂�����鈫���Q

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]

&.&.&.

&.&.&.&.&.

&.&.&.&.&.&.&.?

{
	SoundPlay("@dm006",0,450,true);
}
&.&.&.What?

What is this&.&.&.?

I can't move my body&.

I can't move my neck&, nor my fingers&, nor my feet at all&.

&.&.&.This again&.

This dream again&. 
This dream where I can't move&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I can't move a muscle&, my voice won't come out&, and then&.&.&.

And then&.&.&.<k> there's that&.

My right arm shakes violently&. 
To be more exact&, the upper part of my right arm&.

Below my elbow is nothing&.

It was bitten clean off&.

It doesn't hurt&.

But it's terrifying&, the feeling of not having it there&.

That it'll always be gone&, and then&.&.&.

After that&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���̂�����鈫���P���O���[�h�A�b�v
//���΂���A�Ƙr���H����Ռ�

	SetVolumeEX("@dm*", 0, 0, null);
	CreateSE("SE01","se�[��_����_���ݐ�؂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 100, 1000, Dxl2, true);

	Delete("�G�w�i*");
	CreateTextureSP("�G�w�i", 2000, Center, Middle, "cg/ef/ef�N���A���̉̐�_l.jpg");
	Rotate("�G�w�i", 300, @0, @0, @360, Axl1,false);
	Zoom("�G�w�i", 300, 2000, 2000, Axl1, false);
	Wait(50);
	Zoom("�G�w�i", 300, 1000, 1000, Axl3, false);
	FadeDelete("�G�F��", 200, Dxl1, true);
	Wait(100);
	Delete("�G�w�i");
	Delete("�G�F��");

	Wait(1000);

	CreateSE("SE11","se�[��_����_������01L");
	MusicStart("SE11",5000,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
&.&.&.&.&.

&.&.&.This time it's my leg&.

What is under my left knee is devoured&.

The blackness flickers as a strange&, numbing sensation 
tickles at the wound&.

I need to run away&. 
I need to run away quickly&.

I need to run away&.&.&. quickly&.

Quickly&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(3000);

//�����t�@�C��["dm5190.nss"]

}
