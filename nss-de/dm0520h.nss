//<continuation number="500">
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


scene dm0520h.nss_MAIN
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
	#ev052���t���u����=true;
	#ev052���t���u����a=true;
	#ev052���t���u����b=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0530.nss";

	if($RECRIB_PLAY==1){//��z���[�h��
		$GameName = "";
		$GameCircle=false;
	}
	#RECLIB01=1;//��z�p�t���O�擾
}


scene dm0520h.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg106011_5_�p�r���L��");
	FadeBG(0,true);

	SoundPlay("@dm006",0,450,true);

	$ftime=0;if($RECRIB_PLAY==1){$ftime=1000;}
	FadeDelete("��w�i", $ftime, null, true);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,400,0,800,null,false);

	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,400,0,900,null,false);

	CreateSE("SE03","se�l��_����_����03");
	MusicStart("SE03",0,500,0,600,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
While in all sorts of pain everywhere in my body&, the 
sound of many footsteps reverberate on the room's floor&.

{
	SetVolumeEX("SE*", 2000, 0, null);

	CreateTextureEX("�G�w�i100", 100, Center, Middle, "cg/bg/l/bg106011_5_�p�r���L��_l.jpg");
	Move("�G�w�i100", 500, @50, @0, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);
}
A bunch of men holding machine guns come into the room&.

{
	FadeDelete("�G�w�i100", 500, null, true);

	St("C",740, @0,@0,"st�~���N_�ʏ�_normal");
	FadeSt("C",200,true);
}

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm05/2000010a05">
"Do it&."

{
	DeleteAllSt(200,true);
}
The giant man jerks his chin in my direction&.

What&.&.&.? What are all these people going to do?

{
	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,600,0,900,null,false);

	CreateSE("SE03","se�l��_����_����03");
	MusicStart("SE03",0,700,0,600,null,false);
}
I watch one of the men come closer to me&, and I prepare 
myself for the worst&.

There's nothing I can do&.

{
	SetVolumeEX("SE*", 1500, 0, null);
}
They surround me as I sit there&, pitifully unable to 
escape&.

Ready for them to beat down on me at any moment&, I tense 
up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,700,0,1400,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Someone starts to pull on my jacket&.

{
	CreateSE("SE01","se�l��_����_�ߎC��24.ogg");
	MusicStart("SE01",0,700,0,1000,null,false);
}
And another pins down my legs and arms&.&.&.

&.&.&.&.&.?

What's going on?

When I look at their faces&, I see they have a bizarre look of excitement&.

Their breathing becomes erratic and their eyes are 
bloodshot&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���l�`�z
<voice name="���l�`" class="���l�`" src="voice/dm05/2000020e19">
"Make sure to hold him down hard&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000030a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
&.&.&.I then understand what the look on their faces mean&. 
Stone cold shivers run down my spine with goosebumps 
joining them&.

Hey&, this has to be a joke&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 20, 0, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000040a01">
"Let me go!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��06");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 5, 0, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
For a second I was able to loosen the grip&.
Little by little my restraints became weaker&.

Just a little more&.&.&.
Just a little&.&.&.
{
	CreateSE("SE01","se�l��_����_�ߎC��12");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 10, 0, 0, 0, 500, null, true);
	Delete("�G��");
}

&.&.&.They're off!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i90", 90, -459, -573, "cg/bg/l/bg106011_5_�p�r���L��_l.jpg");
	Fade("�G�w�i90", 150, 1000, null, true);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 30, 0, 10, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000050a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
I finally freed my arms&, but immediately after&, someone 
pinned them down again&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u100", 100, -1024, 0, "cg/ev/l/ev052���t���u����_l.jpg");
	Fade("�G�d�u100", 500, 1000, null, false);
	Move("�G�d�u100", 1000, -640, -262, Dxl3, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���l�a�z
<voice name="���l�a" class="���l�a" src="voice/dm05/2000060e20">
"Hey&, what're you doin'? I told you to hold him down&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,30,null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000070a01">
"L-Let go!"

{
	CreatePlainSP("�G��", 990);

	Fade("�G�d�u100", 0, 0, null, true);
	Fade("�G�w�i90", 0, 0, null, true);
	St("C",740, @0,@0,"st�~���N_�ʏ�_normal");
	FadeSt("C",0,true);

	FadeDelete("�G��", 500, null, true);
}
I see another group of men come up&, as well as the giant 
man folding his arms while standing on the other side of 
the room&.

The giant man was watching me calmly&, as if this was only 
an attraction of sorts&.

{
	CreatePlainSP("�G��", 990);

	Fade("�G�d�u100", 0, 1000, null, true);
	Fade("�G�w�i90", 0, 1000, null, true);
	DeleteAllSt(0,true);

	FadeDelete("�G��", 500, null, true);
}

That bastard&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�G�d�u100", 1200, -389, -242, Dxl3, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���l�b�z
<voice name="���l�b" class="���l�b" src="voice/dm05/2000080e21">
"Hehe&, don't hate us for this&."

//�y���l�`�z
<voice name="���l�`" class="���l�`" src="voice/dm05/2000090e19">
"We can't go against Mink-san's orders&."

Mink&.&.&.?
Is that the man's name?

It was only for a second&, but the men surrounding me 
shuddered and their careless attitude had faded away&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000100a01">
"I said&, let me go! You're disgusting!"

//�y���l�a�z
<voice name="���l�a" class="���l�a" src="voice/dm05/2000110e20">
"Shut the hell up!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");
	Wait(30);
	Delete("�G�d�u100");
	FadeDelete("�G�t���b�V����", 100, null, true);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 20, 20, -10, 10, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000120a01">
"!"

I receive a blow to the side of my face&. I can feel 
the pain and the taste of blood in my mouth&.

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
}


//�y���l�b�z
<voice name="���l�b" class="���l�b" src="voice/dm05/2000130e21">
"Even if he's a guy&, I don't really give a shit&."

His rugged hand pulls off my shirt and starts feeling up 
my chest&.

//�y���l�`�z
<voice name="���l�`" class="���l�`" src="voice/dm05/2000140e19">
"But this guy&, he has fair skin and long hair too&. Don't he look like a chick anyway?"

//�y���l�b�z
<voice name="���l�b" class="���l�b" src="voice/dm05/2000150e21">
"I guess&, but he's still a dude&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
&.&.&.That's right&, I'm a guy here! You're making me want to  throw up!

{
	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,500,0,1000,null,false);

	Move("�G�w�i90", 500, @0, @50, Dxl3, true);
}

I decide to mess with them; I collect all the blood in my  mouth and spit on one of the men closest to me&.

//�y���l�a�z
<voice name="���l�a" class="���l�a" src="voice/dm05/2000160e20">
"-! You little shit!"

{
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,50,null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_shout");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000170a01">
"Get off! Don't touch me!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 20, 0, 0, 500, null, true);
	Delete("�G��");

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,700,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���l�a�z
<voice name="���l�a" class="���l�a" src="voice/dm05/2000180e20">
"Ugh!"

I kick the distracted man in the stomach and he falls 
forward&, groaning in pain&.

Pathetic&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�t���b�V����", 100, null, true);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 20, 10, -10, 0, 500, null, true);
	Shake("�G��", 200, 20, 20, -10, 10, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000190a01">
"&.&.&.Erk&.&.&."

Someone punches me twice as hard as my kick&.

Shit&.&.&.

//�y���l�`�z
<voice name="���l�`" class="���l�`" src="voice/dm05/2000200e19">
"Hurry up and pull him down&."

//�y���l�b�z
<voice name="���l�b" class="���l�b" src="voice/dm05/2000210e21">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��23");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u101", 101, 0, -445, "cg/ev/m/ev052���t���u����_m.jpg");
	Fade("�G�d�u101", 500, 1000, null, false);
	Move("�G�d�u101", 500, -150, -445, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000220a01">
"! Stop- Don't touch me!"

One of them violently undoes my belt and unbuttons my 
pants&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u102", 102, -150, -217, "cg/ev/m/ev052���t���u����a_m.jpg");
	Move("�G�d�u102", 500, -150, -137, Dxl1, false);
	Fade("�G�d�u102", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
Another hand from the side pulls on my clothes&, and pulls 
up my shirt&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000230a01">
"&.&.&.Let go!"

//�y���l�a�z
<voice name="���l�a" class="���l�a" src="voice/dm05/2000240e20">
"Shut up&. Gag him!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u103", 103, -150, -137, "cg/ev/m/ev052���t���u����b_m.jpg");
	FadeFR2("�G�d�u103", 0, 1000, 150, 0, 0, 30, null, true);

	Delete("�G�d�u101");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000250a01">
"Nfgh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Delete("�G�d�u102");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
They stuff a ball of cloth into my mouth&, and the dryness  of it makes me feel nauseous&.

Even if I try to shout&, my voice won't come out&.

//�y���l�b�z
<voice name="���l�b" class="���l�b" src="voice/dm05/2000260e21">
"Ah&, holy shit&. I actually got hard&."

//�y���l�`�z
<voice name="���l�`" class="���l�`" src="voice/dm05/2000270e19">
"Just do it already so I can have my turn&."

//�y���l�a�z
<voice name="���l�a" class="���l�a" src="voice/dm05/2000280e20">
"I'm next!"

They disgustingly babble on as one of them pulls off my 
pants and underwear&.

{
	CreateSE("SE01","se�l��_����_�ߎC��11");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,200,0,0,30,null, true);
	Delete("�G��");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000290a01">
"Nmphghhhhh!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("�G�d�u102", 102, Center, Middle, "cg/ev/ev052���t���u����b.jpg");
	Fade("�G�d�u102", 0, 1000, null, true);

	Move("�G�d�u103", 600, 0, -345, Dxl3, false);
	FadeDelete("�G�d�u103", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
I shake my legs and try to resist&, but the entire lower 
half of my body ends up being exposed&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000300a01">
"&.&.&.!!!"

//�y���l�`�z
<voice name="���l�`" class="���l�`" src="voice/dm05/2000310e19">
"Hey now&, he really is a guy&. Just looking at him makes me
 go limp&."

//�y���l�b�z
<voice name="���l�b" class="���l�b" src="voice/dm05/2000320e21">
"Not for me&."

//�y���l�a�z
<voice name="���l�a" class="���l�a" src="voice/dm05/2000330e20">
"Serious? Anyway&, don't you do it from behind or some
 shit?"

//�y���l�b�z
<voice name="���l�b" class="���l�b" src="voice/dm05/2000340e21">
"Isn't it better to do a girl from behind too?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�S��_�ۓ�01");

	CreateTextureEX("�G�d�u104", 104, -436, -262, "cg/ev/l/ev052���t���u����b_l.jpg");

	MusicStart("SE01",0,1500,0,1000,null,false);

	CreateColorSPadd("�G�F��", 110, "FFFFFF");
	Delete("�G�d�u102");
	CreateMaskEX("�G��", 0, Center, Middle, "cg/data/noize_01_00_0.png", false);
	CreateTextureSP("�G��/�G�d�u120", 120, -521, -370, "cg/ev/l/ev900�����P�l�̑��t_l.jpg");
	Wait(10);
	Fade("�G�F��", 50, 1000, null, true);

	Fade("�G�d�u104", 0, 1000, null, true);
	Fade("�G��/�G�d�u120", 0, 0, null, true);
	Fade("�G�F��", 100, 0, null, true);
	Delete("�G��");

	CreateSE("SEL01","se�l��_�S��_�ۓ�02L");
	MusicStart("SEL01",4000,700,0,600,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000350a01">
"Ugh&.&.&.!!"

Dry hands go across my thighs and my ass&, and then a 
finger presses into me&.

A feeling of absolute disgust courses through my entire 
body and nearly makes me go insane&. 

{
	SetFrequency("SEL01", 2000, 800, null);
}

More than feeling scared or angry&.&.&.
It just feels so disgusting&.&.&.!

Why did this have to happen&.&.&.&.<k>
I was just looking for Granny&, that's all&.&.&.
{
	SetFrequency("SEL01", 2000, 1000, null);
}


That giant man&.&.&.

This is all because of him&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetFrequency("SEL01", 2000, 1150, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
He's still looking at me right now&.

He's watching them do this to me&.&.&.
Does he think this is fun?
{
	SetFrequency("SEL01", 2000, 1300, null);
}

Why?<k> Why&.<k> Why&.

Why&.&.&.
{
	SetFrequency("SEL01", 2000, 1450, null);
}
Why does this have to happen&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE00","se�l��_�S��_�ۓ�01");

	CreateColorEX("�G�F��", 5000, "000000");
	CreatePlainEX("�G��", 4000);
	SetTone("�G��", NegaPosi);
	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");

	SetVolumeEX("SEL01", 500, 0, null);
	MusicStart("SE00",0,1500,0,1000,null,false);
	SetVolumeEX("@dm*", 300, 0, null);

	Fade("�G�F��", 0, 1000, null, true);

	Wait(50);

	Fade("�G��", 0, 1000, null, true);
	Delete("�G�F��");

	Wait(50);

	Fade("�G�t���b�V����", 0, 1000, null, true);
	Delete("�G�F��");
	Delete("�G��");

	Wait(100);

	Lens_Set("�����Y�P",1000,-135, -415, 1550, 1550);
	Lens_Start(15000);

	Delete("�G�d�u*");
	FadeDelete("�G�t���b�V����", 600, null,true);

	CreateSE("SEL01","se�[��_���__�����g01L");
	MusicStart("SEL01",3000,300,0,600,null,true);

	Wait(2000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
//�y���l�`�z
<voice name="���l�`" class="���l�`" src="voice/dm05/2000370e19">
"Looks like he's suddenly calmed down&."

//�y���l�b�z
<voice name="���l�b" class="���l�b" src="voice/dm05/2000380e21">
"I guess he just gave up&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���l�a�z
<voice name="���l�a" class="���l�a" src="voice/dm05/2000390e20">
"Then go ahead already&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�F��", 100, 1000, null, true);
	Fade("�G�F��", 50, 0, null, true);

//	SoundPlay("@dm006",0,450,true);
	SetVolumeEX("SEL01", 3000, 500, null);
//�������H�F�����������ʂŃZ���t�𗬂�����

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000400a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���u&.&.&.&.&.Get out of my sight&.

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0142]
//�y���l�`�z
<voice name="���l�`" class="���l�`" src="voice/dm05/2000410e19">
"Hey&, is he okay?"

//�y���l�a�z
<voice name="���l�a" class="���l�a" src="voice/dm05/2000420e20">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y���l�b�z
<voice name="���l�b" class="���l�b" src="voice/dm05/2000430e21">
"Hey&.&.&. Hey&, huh? What&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����H�F�����������ʂŃZ���t�𗬂�����
	SetVolumeEX("SEL01", 10000, 1500, null);

	Fade("�G�F��", 100, 1000, null, true);
	Fade("�G�F��", 50, 0, null, true);
	Wait(10);
	Fade("�G�F��", 50, 1000, null, true);
	Fade("�G�F��", 100, 0, null, true);

//	Fw("fw���t_�ʏ�͍s�g_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0151]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/2000440a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���u�c�c�c�c������A�S��������A������A������A������v

//	CreateSE("SE01","se�[��_����_�͑��t01");
//	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0152]
//�y���l�a�z
<voice name="���l�a" class="���l�a" src="voice/dm05/2000460e20">
"Wh-What? Somehow&.&.&."

//�y���l�`�z
<voice name="���l�`" class="���l�`" src="voice/dm05/2000450e19">
"Ahhhh&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 150, 0, null);
	CreateColorSP("�G�F��", 5000, "000000");
	Delete("�����Y�P");

	Wait(3000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0154]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm05/2000470b01">
"Disappear&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	CreateSE("SE01","se�[��_����_�͑��t01");
//	MusicStart("SE01",0,700,0,1000,null,false);

//	Fade("�G�F��", 100, 1000, null, true);
//	Fade("�G�F��", 50, 0, null, true);
//	Wait(10);
//	Fade("�G�F��", 50, 1000, null, true);
//	Fade("�G�F��", 100, 0, null, true);

//	Wait(1000);

//�����o�F�Ó]
	//CreateColorEX("�G�F��", 5000, "000000");
	//Fade("�G�F��", 300, 1000, null, true);

//���[�x�F��{�̂��߉��̑䎌�𕪊����܂����B
//�u���c�c�A���킠�������������������I�I�I�v

//���O�l��������ŉ����f�[�^������{�C�X�^�O�����ւ�
//�y���l�`�z
//<voice name="���l�`" class="���l�`" src="voice/dm05/2000480e19">
//�u���c�c�A���킠�������������������I�I�I�v

//�y���l�a�z
//<voice name="���l�a" class="���l�a" src="voice/dm05/2000490e20">
//�u���c�c�A���킠�������������������I�I�I�v

//�y���l�b�z
//<voice name="���l�b" class="���l�b" src="voice/dm05/2000500e21">
//�u���c�c�A���킠�������������������I�I�I�v

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
<voice name="���̑�" class="���̑�" src="voice/dm05/2000480e19">
"Ugh&.&.&.&. Uwaaaaaaaagh!!!"

//<voice name="���l�a" class="���l�a" src="voice/dm05/2000490e20">
//<voice name="���l�b" class="���l�b" src="voice/dm05/2000500e21">
</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
*/

//�����o�F��ʓ]��

	SetVolumeEX("@dm*", 3000, 0, null);

//�����t�@�C��["dm0530.nss"]


	ClearFadeAll(1000, true);

	if($RECRIB_PLAY==1){Wait(2000);}

}
