//<continuation number="210">
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


scene dm4110.nss_MAIN
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

	#bg302021_5_�O���b�^�[���ԓV��=true;
	#bg304091_5_���]�^���[���z�[��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4120.nss";

#CFGVC_TOUE=1;//�R���t�B�O�F���]�{�C�X���

}


scene dm4110.nss
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

	FadeDelete("��w�i", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
When I go back to the living room and sit on the sofa&, Ren pops out of my bag&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/1000010a01">
"I should think about how I'm going to find Toue first&.
 Maybe he's in that tower&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm41/1000020a06">
"Tae said that he's holding a special commemorative event&,
 so it's highly likely that Toue is staying in that tower&.
 However&, that is not certain&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/1000030a01">
"That's true&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
	CreateSE("SE02","se�l��_����_�ߎC��15");
	MusicStart("SE02",0,700,0,800,null,false);

	CreateTextureEX("�G�w�i100", 100, -562, -472, "cg/bg/l/bg302021_5_�O���b�^�[����_l.jpg");
	Move("�G�w�i100", 500, -632, -472, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
As we talk&, I lay down on the sofa and cross my arms&.

This sofa feels really comfortable&.
I feel a bit more relaxed now&. And&.&.&.

It must be because I've been running all day without a 
chance to take a breather&.&.&.
I feel like taking a small nap&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I turn my head to the side and look at the TV&.

I wonder what kind of programs they broadcast in 
Platinum Jail&.

{
	SetVolumeEX("@dm002", 2000, 0, null);
	CreateSE("SE01","se����_�e���r_�I��");
	MusicStart("SE01",0,700,0,1000,null,false);
}
I curiously pick up a cardlike remote and turn on the TV&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�e�F�኱������
	SoundPlay("@dm004",0,200,true);

	Wait(300);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/1000040a01">
"&.&.&.Hm?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
I flip through some channels and I realize that the Old 
Resident District has never seen any of them&.

Even Platinum Jail's news and interiors are all so foreign&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/1000050a01">
"This is kind of&.&.&. boring&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I stick to the news channel&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���A�i�E���T�[�z
<voice name="���A�i�E���T�[" class="���A�i�E���T�[" src="voice/dm41/1000060e07">
"&.&.&.Next up&, the symposium from a few days ago&, "Platinum
 Jail and pleasure&, a new kind of principle"&." 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���A�i�E���T�[�z
<voice name="���A�i�E���T�[" class="���A�i�E���T�[" src="voice/dm41/1000070e07">
"On the appointed day&, over one thousand people gathered&,
 leaving the meeting area congested with people&."

//�y���A�i�E���T�[�z
<voice name="���A�i�E���T�[" class="���A�i�E���T�[" src="voice/dm41/1000080e07">
"And once again&, the founder of Platinum Jail&, Toue Inc&.&,
 with their director&, Toue&, delivered a speech&."

//�y���A�i�E���T�[�z
<voice name="���A�i�E���T�[" class="���A�i�E���T�[" src="voice/dm41/1000090e07">
"Now&, let us take a look at that speech&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//����ʂ��؂�ւ��A�e���r�ɓ��]���f��
	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 300, 1000, null, true);

	CreateTextureSP("�G�w�i120", 120, Center, Middle, "cg/bg/bg304091_5_���]�^���[���z�[��.jpg");
	CreateTextureEX("�G�G�t�F�N�g", 1000, Center, Middle, "cg/ef/effi�e���r��ʗp���ʃt�B���^�[.jpg");
	Fade("�G�G�t�F�N�g", 0, 300, null, true);

	St("C",740, @0,@0,"bu���]_�ʏ�_normal");
	FadeSt("C",0,true);

//�e�F�߂�
	SetVolumeEX("@dm004", 500, 450, null);
	Fade("�G�F��", 300, 0, null, true);

	Wait(500);

#CFGVC_TOUE=1;//�R���t�B�O�F���]�{�C�X���
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm41/1000100b02">
"&.&.&.Everyone&. Today&, all of Japan and myself would like to
 thank you for coming to the symposium&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm41/1000110b02">
"The theme of this address is "Platinum Jail's pleasure"&,
 and I would like to speak to Japan about the relationship
 between the two&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu���]_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm41/1000120b02">
"Why did we create Platinum Jail? That is because we
 aspire to provide the utmost perfect&, pleasurable
 experience for all&."

{
	St("C",740, @0,@0,"bu���]_�ʏ�_normal");
	St("C",740, @0,@0,"bu���]_�ʏ�_normal2");
	FadeSt("C",200,true);
	FadeStPro("C", 8800, 200);
}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm41/1000130b02">
"And today we are able to see that reality after countless
 hardships&. Now&, what exactly is 'pleasure'?"

{	St("C",740, @0,@0,"bu���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm41/1000140b02">
"It is when not one person is dissatisfied&, when both body
 and mind are at ease; that is what I believe&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm41/1000150b02">
"Although there is unhappiness out in the world&, I do not
 believe that enlightenment is unattainable&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm41/1000160b02">
"A reality of complete enlightenment&, a stress-free life&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu���]_�ʏ�_serious");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm41/1000170b02">
"If&, in the future&, when all the world achieves that state&, the need for war around the world will disappear&. But that is a difficult thing to do&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm41/1000180b02">
"So that is what I had in mind when I founded this perfect
 pleasure facility&, Platinum Jail&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 3000);

	CreateSE("SE01","se����_�e���r_�I�t");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("@dm004", 100, 0, null);

	Zoom("�G��", 500, 1000, 0, Dxl1, false);
	CreateColorSP("�G�F��", 5000, "000000");
	DrawTransition("�G�F��", 300, 0, 1000, 100, Dxl2, "cg/data/circle_03_00_1.png", true);

	Delete("�G��");
	Delete("�G�G*");
	Delete("�G�w*");
	DeleteAllSt(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/1000190a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

	CreateTextureSP("�G�w�i100", 100, -632, -472, "cg/bg/l/bg302021_5_�O���b�^�[����_l.jpg");
	FadeDelete("�G�F��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
&.&.&.Disgusting&.

I turn off the TV and throw the remote onto the table&.

As a person from the Old Resident District&, all I heard 
from Toue was bullshit&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
He looked as if he had magnificent ideas&, but below him&, 
people suffer&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/1000200a01">
"What do you mean&, stress-free&, you asshole&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�e�F�w������ƌ��������\���v����
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,500,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
	CreateSE("SE02","se�l��_����_�ߎC��15");
	MusicStart("SE02",0,500,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
I turn over and face the back of the sofa&.

I'm pissed off&, and feel a little sluggish because I'm so 
tired&.

Clear fell asleep earlier&, too&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/1000210a01">
"Ren&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
I faintly call his name&, and Ren comes over and cuddles 
next to me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
I hug his soft body&. In a single moment&, my body 
becomes relaxed and I close my eyes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm002", 3000, 0, null);
	ClearFadeAll(2000, true);

	Wait(2000);

//�����t�@�C��["dm4120.nss"]

}
