//<continuation number="370">
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


scene dm2090.nss_MAIN
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
	#bg302051_5_�O���b�^�[�O�ʂ�=true;
	#bg302052_5_�O���b�^�[�O�ʂ�O���b�^�[�Ŕ�=true;
	#bg302051_5_�O���b�^�[�G���g�����X=true;
	#bg302021_5_�O���b�^�[���ԓV��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2100.nss";

}


scene dm2090.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg302051_5_�O���b�^�[�O�ʂ�");
	FadeBG(0,true);

//���F�O�t�@�C����������p��
	SoundPlay("@dm004",0,450,true);

	Delete("��w�i");
	DrawDelete("�G�F��", 500, 100, null, "blind_01_00_1", true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Following Ren's directions&, we arrive at a sort of 
residential area&.

Gorgeous&, regal-seeming buildings line up down the street&.

It looks like they're all ranked&, and our place to stay is a smaller building at the end&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000010a01">
"This is it&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
Compared to the other buildings&, it feels somewhat old&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���F�\�����@�ύX���邩��
	OnBG(10,"bg302052_5_�O���b�^�[�O�ʂ�O���b�^�[�Ŕ�");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
Above the door is a plate with "GLITTER" written on it&.

There's a plate with a different name on the neighboring 
building&, so this is probably the nickname for this 
building&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	OnBG(10,"bg302051_5_�O���b�^�[�O�ʂ�");
//	FadeBG(1000,true);

	Wait(300);

	CreateSE("SE01","se����_�R�C��_���쉹02");//�������u�r�d�Fse����_�R�C��_���쉹02�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0018]
I hold my Coil to the authentication monitor next to the 
door and try twisting the retro door knob&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE01","se����_�O���b�^�[����_���J��01a");//�������u�r�d�Fse����_�O���b�^�[����_���J��01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, -200, "cg/bg/m/bg302051_5_�O���b�^�[�G���g�����X_m.jpg");
	CreateTextureSP("�G�w�i��", 200, Center, 0, "cg/bg/m/bg302051_5_�O���b�^�[�G���g�����X_m.jpg");
	CreateColorEXadd("�G�w�i��", 3000, "WHITE");
	Fade("�G�w�i��", 0, 1000, null, true);

	Move("�G�w�i��", 3000, @156, @0, null, false);

	FadeDelete("�G����", 500, null, true);
	FadeDelete("�G�w�i��", 1000, null, false);

	Wait(2000);

	Move("�G�w�i", 3000, @-156, @0, null, false);
	FadeDelete("�G�w�i��", 500, null, true);

	Wait(2000);

	FadeDelete("�G�w�i", 500, null, true);

	Wait(500);

	SoundPlay("@dm002",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
When I step inside&.&.&. I'm instantly in awe&.

I thought it was old-fashioned just from the exterior&, but the interior makes it feel even more so&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000020a01">
"How should I say this&.&.&. The inside sure has felt the
 time&."

{	Fw("fw�m�C�Y_�ʏ�_angry2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000030a03">
"&.&.&.I don't really like this&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000040a01">
"Why?"

{	Fw("fw�m�C�Y_�ʏ�_angry3");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000050a03">
"Too ancient&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Noiz's rather rude remark causes me to stare at him&, and I notice his expression changing little by little&.

Looks like his repulsion is somewhat fading&.

I was caught by him for a moment&, but without caring 
anymore I looked around the building&.

On the first floor is a large clock and lots of expensive-
looking furniture in a line&. At the back is a staircase 
leading to the second floor&.

As I look around&, Noiz lands on the sofa with a thud&.

Then&, he suddenly holds out his hand&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000060a03">
"Gimme your Coil&."

{	Fw("fw���t_�ʏ�_shock");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000070a01">
"Wha?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000080a03">
"Hand it over&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000090a01">
"Why?"

{	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000100a03">
"I'll investigate the origin of the invitation&. If it's
 connected to Toue&, then it'll make things a lot faster&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000110a01">
"Toue? Why Toue?"

{	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000120a03">
"This Platinum Jail belongs to Toue&. The fact that you were actually invited here means there's a high possibility
 he's behind this&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000140a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
Noiz has a point&.

But before that&, I don't even know if I can trust him&.

Is he going to take my information from the Coil after he 
convinces me?

It would be easy for him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000150a03">
"What now?"

{	Fw("fw���t_�ʏ�_cranky");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000160a01">
"Nothing&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal2");
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal3");
	FadeSt("C",200,true);
	FadeStPro("C", 6000, 200);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000170a03">
"Don't tell me you're thinking I'm gonna snoop into your
 information&. I'm not gonna do it now&. I can do that
 whenever I want&."

{	Fw("fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000180a01">
"&.&.&.Hey&, you&.&.&."

{	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000190a03">
"Give it already&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
Because of his constant insisting&, I unwillingly throw my 
Coil to Noiz&.

{	DeleteAllSt(200,true);
	CreateSE("SE01","se����_�R�C��_���쉹02");//�������u�r�d�Fse����_�R�C��_���쉹02�v
	MusicStart("SE01",0,700,0,1000,null,false);}
Once he takes my Coil&, he connects it to his own and 
begins to work&.

{	CreateSE("SE01","se����_�p�\�R��_�L�[�{�[�h����01");//�������u�r�d�Fse����_�p�\�R��_�L�[�{�[�h����01�v
	MusicStart("SE01",0,700,0,1000,null,false);}
He taps the keyboard with awesome speed and continuously 
chases the text flowing across the monitor with his eyes&.

&.&.&.Impressive&.

I do have some confidence in my own skills&, but I know I 
can't do that&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Maybe because he's concentrating so much&, an aura drifts 
from Noiz that makes it difficult to speak to him&. 

While I secretly watch from afar&, Noiz suddenly stops his 
hands&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000200a03">
"&.&.&.No way&."

{
	Fw("fw���t_�ʏ�_shock2");	
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000210a01">
"Something happen?"

{
	Fw("fw�m�C�Y_�ʏ�_angry2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000220a03">
"No matter what I do&, I get an error&. Even the country's
 network isn't this complicated&. Impossible&. Putting aside
 the possibility of Toue being the culprit&.&.&."

{	Fw("fw�m�C�Y_�ʏ�_angry");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000230a03">
"It's a fact that the sender is completely hidden&. It might be a trap after all&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000240a01">
"&.&.&.Are you serious?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
You're saying it like it's nothing&.&.&.

Noiz throws me back my Coil&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000250a03">
"Let's just be careful for now&. You might be targeted&, and  there'll probably be more Drive-Bys&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
Drive-Bys&, huh&.&.&.

I know that Noiz was the rabbit head guy from before&, but 
I don't know who the second Drive-Byer is&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000260a01">
"Can anyone do a Drive-By?"

{	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal3");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000270a03">
"If you have some knowledge and know some tricks&. Anyone
 can do it&, even you&. And&.&.&." 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
Noiz stops in the middle of his sentence and stares at me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000280a01">
"What now?"

{	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000290a03">
"You've done Rhyme&, and you still don't know? The whole
 thing with Usui and regulations happened about six&,
 seven years ago&."

{	
//St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal");
//	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000300a03">
"When you still did Rhyme&.&.&. Back about ten years ago&,
 Drive-Bys should have been more common&."

{	Fw("fw���t_�ʏ�_cranky");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000310a01">
"I don't know because I can't remember&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0099]
Noiz closes his lips&, fixing his eyes on me in a cold 
stare&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/9000320a03">
"I don't get you and your little half-assed expression&. I'm sick of it&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000330a01">
"&.&.&.Wha?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 4000, 0, null);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,600,0,750,null,false);

	Wait(500);

	CreateSE("SE02","se�l��_����_����05");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(16);
	SetVolumeEX("SE*", 5000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
Leaving me with those final words&, Noiz stands up from the sofa and walks up the stairs&.

Shocked solid&, I can only watch him walk away&.

&.&.&.But soon&, I feel the tinges of annoyance I should've 
felt long before&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0104]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000340a01">
"What's his problem? I'm the one who doesn't get anything&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 1000, Center, Middle, "cg/bg/bg302021_5_�O���b�^�[���ԓV��.jpg");
	OnBG(10,"bg302021_5_�O���b�^�[���ԓV��");
	CreateSE("SE01","se�l��_����_�ߎC��02");

	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 300, 0, 5, 0, 0, 500, null, false);
	Fade("�G�w�i", 300, 1000, null, false);
	FadeBG(300,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0105]
I angrily throw myself onto the couch and then take 
Ren out of my bag&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0106]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000350a01">
"Why's he looking down on me all the time? He just acts out and says things on impulse&, what a selfish guy&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm20/9000360a06">
"His remark and its intention is mostly incomprehensible&,
 to be sure&." 

{	Fw("fw���t_�ʏ�_cranky2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/9000370a01">
"Right? It's not like I know him that well&, but I'd hoped
 he'd be a little more thoughtful&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainEX("�G��", 5000);
	SetShade("�G��", SEMIHEAVY);
	Fade("�G��", 1000, 1000, null, true);
	Wait(300);
	Fade("�G��", 500, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
As I complain to Ren about Noiz&, I begin to feel myself 
sinking deeper into the sofa&.

{	Fade("�G��", 500, 250, null, false);}
It's reeeeally comfortable&.
Maybe that's why I'm getting a little sleepy&.

Thinking back&, we did run all the way here from the Old 
Resident District&.&.&.

{	Fade("�G��", 500, 500, null, false);}
I should sleep a bit&, just to get some stamina back&.&.&.

I'm so tired&.&.&.

Without resisting against the creeping drowsiness&, I 
slowly close my eyelids&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G��", 1000, 1000, null, true);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 2000, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	ClearFadeAll(1000, true);
	Wait(2000);

//�����t�@�C��["dm2100.nss"]

}
