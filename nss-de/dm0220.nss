//<continuation number="110">
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


scene dm0220.nss_MAIN
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
	#ev022���t���y����=true;
	#ev022���t���y����a=true;

	#bg104001_3_���t��O�ʂ茺�֏���=true;
	#bg210011_2_�\�I�C�ƍ��l=true;
	#bg104011_5_���t��֏���=true;
	#bg209011_2_�\�I���t����O�ό��グ=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0230.nss";

}


scene dm0220.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104001_3_���t��O�ʂ茺�֏���");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
After I passed out in front of the shop&.&.&.

Ren called Haga-san&, and he let me rest in the shop for 
a while&.

Even though I lost the bag I was supposed to deliver&, 
Haga-san said with his usual smile that I could go home 
for today&.

I decided to depend on Haga-san's kindness and obediently 
went home&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_���t���_���J���������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");

	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("�G�w�i100", 100, Center, Middle, "cg/bg/bg104011_5_���t��֏���.jpg");

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);


	OnBG(10,"bg104011_5_���t���");
	FadeBG(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
It seems like Granny isn't home yet&, and the house is 
dark&.

{
	CreateSE("SE01","se����_���t��Ɩ�_�_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("�G�w�i100", 200, null, true);
}
I turn on the lights to the dark entrance hall&, enter the
corridor&, and walk into the kitchen&. I take a pill for my
headache from the shelf and drink more water than usual&.

 The pills should technically be taken after a meal&, but my top priority is to calm down the headache&.

{
	CreateSE("SE01","se����_���t��K�i_�o��ʏ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
It might be because I'm relieved to be home&, but I 
suddenly feel so tired that it becomes difficult to walk&.

I want to fall asleep on the spot&, but I make my way up to 
my room on the second floor first&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	OnBG(10,"bg104031_5_���t���");
	FadeBG(1000,true);

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 15, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
I take Ren out of the bag and put him on the bed&. 
I remove my jacket and lay down next to him&.

Whew&.&.&.

I lost the bag I was supposed to deliver&, and after that I 
even left work early&.&.&.

Haga-san's smile and consideration were great&, and a sense 
of guilt flocks to me just for remembering it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/2000010a01">
"What am I doing&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
This is all because of that weird rabbit head&.

And&.&.&. Rhyme&.

Is it really worth hyping up and becoming addicted to it?

{
	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1200,null,false);
}
I slowly sit up while remembering the game-like space I 
was sent to&, and I only feel worse&.

I guess the medicine hasn't kicked in yet because the 
headache isn't going away&. I'll try something else&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,600,0,1400,null,false);

	Wait(500);

	CreateSE("SE02","se����_�x�b�h_�Q��01");
	MusicStart("SE02",0,600,0,1200,null,false);

	CreateTextureEX("�G�d�u120", 120, -957, -114, "cg/ev/l/ev022���t���y����_l.jpg");
	CreateTextureEX("�G�d�u102", 102, -955, -24, "cg/ev/l/ev022���t���y����a_l.jpg");
	CreateTextureEX("�G�d�u101", 101, Center, Middle, "cg/ev/ev022���t���y����a.jpg");
	CreateTextureEX("�G�d�u100", 100, Center, Middle, "cg/ev/ev022���t���y����.jpg");
	Fade("�G�d�u100", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I take the headphones I threw together with my jacket 
and put them on&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�d�u101", 800, 1000, null, true);
	Delete("�G�d�u100");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
I select my favorite music from my Coil and close my 
eyes&, leaving my body to the flowing music&.

Whenever I'm restless or feeling unwell for whatever 
reason&, this method always helps me get relaxed again&.

I become immersed in the world of me and music&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/2000020a01">
"&.&.&.Mn&."

The rhythm and tempo of the music&, my own breathing and 
heartbeat&.

They tune together little by little&, melting and 
eventually becoming one surging wave&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/2000030a01">
"Ha&, &.&.&.&.&.&."

The whirlpool of melody wraps around my body and strokes 
it softly&.

The sound permeates my skin&, mingles with my blood&, and 
flows throughout me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Move("�G�d�u102", 1000, -955, -114, Dxl1, false);
	Fade("�G�d�u102", 1000, 1000, null, true);
	Delete("�G�d�u101");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/2000040a01">
"&.&.&.Ah&.&.&."

Lights of all colors dance in my head like a soft film&.

It feels pleasant and I slowly calm down&. It was like 
telling myself that only I was allowed here&, that this 
is a place only for me&, and I felt peaceful&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/2000050a01">
"Ahhh&.&.&."

{
	CreateTextureEX("�G�w�i110", 110, 0, -556, "cg/bg/l/bg104031_5_���t���_l.jpg");
	Move("�G�w�i110", 500, 0, -572, Dxl1, false);
	Fade("�G�w�i110", 500, 1000, null, true);

	Delete("�G�d�u102");
}
The discord of headache and the noise in my body becomes 
distant&, and only the quiet sound of my own breathing 
leaves me&.

Like being pushed into a wave that spread to all parts of 
my body&, a faint breath escaped from my lips time and 
again&.

So comfortable&.&.&.

I feel like I'm sinking more deeply than usual today&.

Pain and such had all gone off somewhere&.

If I fall asleep like this&, all that's left is to wait for 
a calm waking to come&.

If I fall asleep like this&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_��_��01");
	MusicStart("SE01",0,450,0,2000,null,false);

	Move("�G�d�u120", 500, -957, -101, Dxl1, false);
	Fade("�G�d�u120", 500, 1000, null, true);
	Delete("�G�w�i110");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/2000060a01">
"&.&.&.&.&.?"

A sound&.&.&.?

I open my eyes slightly&, but with my consciousness blurry&, I can't tell what it is for sure&.

&.&.&.&.&.
&.&.&.Well&, whatever&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(2000, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
I give up on thinking straight and close my eyes again&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 5000, 0, null);

	ClearFadeAll(2000, true);
	CreateColorSP("�G�F��", 5000, "000000");

	Wait(1000);

	CreateColorSPadd("�G�F��", 3000, "FFFFFF");

	CreateTextureSP("�G�w�i101", 101, Center, -766, "cg/bg/bg209011_2_�\�I���t����O�ό��グ.jpg");
	SetShade("�G�w�i101", NOMORE);
	CreateTextureSP("�G�w�i100", 100, -212, -559, "cg/bg/l/bg210011_2_�\�I�C�ƍ��l_l.jpg");
	SetShade("�G�w�i100", NOMORE);

	CreateSE("SE01","se��_���R_�g01L");
	MusicStart("SE01",4000,400,0,1000,null,true);

	Wait(1500);

	FadeDelete("�G�F��", 1500, null, true);

	Fade("�G�F��", 2000, 500, null, true);

	CreateVOICE("���t","dm02/2000070b01");
	MusicStart("���t",5000,300,0,1000,null,true);

	CreateVOICE("�@","dm02/2000080c03");
	MusicStart("�@",5000,300,0,1000,null,true);

	FadeDelete("�G�w�i101", 1000, null, true);
	Fade("�G�F��", 3000, 100, null, true);

	Wait(1500);

	SetVolumeEX("SE01", 3000, 300, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
This place&.&.&. I've seen it before&.

I know it well&.

I sit on a sandy beach and talk with a certain person&.

I treasure what he says as if the words themselves shine&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�F��", 1000, 1000, null, true);

	CreateTextureSP("�G�d�u200", 200, -732, -406, "cg/ev/l/evf10�L���̒��̕��̉e_l.jpg");
	CreateTextureEXadd("�G�d�u201", 201, -732, -406, "cg/ev/l/evf10�L���̒��̕��̉e_l.jpg");
	LastfireOGMIX("@�G�d�u201","�v���Z�X�t�@�C���[");

	Fade("�G�F��", 2000, 100, null, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�������F�������H�����Ďg�p�i�قƂ�Ǖ������Ȃ������Ɂj
//�y�i�C���z
<voice name="�i�C��" class="�i�C��" src="voice/dm02/2000090b17">
"&.&.&.&.&."

//�u�|���Ȃ�����A�����̐��E����o�Ă����Łv

//�������F�������H�����Ďg�p�i�قƂ�Ǖ������Ȃ������Ɂj
//�y�i�C���z
<voice name="�i�C��" class="�i�C��" src="voice/dm02/2000100b17">
"&.&.&.&.&."

//�u���v�B���E�͂��ł��󂷂��Ƃ��ł��邩��v

//�������F�������H�����Ďg�p�i�قƂ�Ǖ������Ȃ������Ɂj
//�y�i�C���z
<voice name="�i�C��" class="�i�C��" src="voice/dm02/2000110b17">
"&.&.&.&.&."

//�u�󂵂āA���̂��Ƃɂ܂��V���Ȑ��E�����o���΂����B�\���ɏI���Ȃ�ĂȂ��񂾁v
//Hihi, it's nice that the words actually are written here&. Beautiful&.

&.&.&.What did he say again?
I can't remember&.

What he said was important&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("���t", 3000, 0, null);
	SetVolumeEX("�@", 3000, 0, null);
	Fade("�G�F��", 3000, 1000, null, true);

//�����I���

	ClearFadeAll(3000, true);

	Wait(4000);

//�����t�@�C��["dm0230.nss"]

}
