//<continuation number="180">
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


scene dm5640.nss_MAIN
{
$TEXTBOX_TYPE="�\�I��";
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
	#ev564���t�A����F�߂�=true;
	#ev564���t�A����F�߂�a=true;

	#MF_mv5640a=true;
	#MF_mv5640b=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5650.nss";

}


scene dm5640.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg210011_2_�\�I�C�ƍ��l");
	FadeBG(0,true);
	CreateTextureSP("�G�w�i100", 100, Center, Middle, "cg/bg/bg211011_0_���_���E�Z�C.jpg");

	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
As I hang my head in shame&, the pure white field began to 
fill with color&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateMovieEX("�G����110", 110, Center, Middle, false, false, "dx/mv5640a.ngs");
	Fade("�G����110", 1000, 1000, null, true);

	Delete("�G�w�i100");

	CreateSE("SE02","se��_���R_�g01L");
	MusicStart("SE02",10000,700,0,1000,null,true);

//�Z�C�̐��_���E����A�\�I�C�ƍ��l�Ɉړ�������A�����t�̗����G�������t�ɖ߂��Ă����񂶂�Ȃ����ȁ[�A�����{�b�N�X���ɖ߂邵�i���q
//cono�u���o�F�C�����܂����v

	MovieSkipPlay("�G����110","MF_mv5640a");
	//Wait(12000);

	FadeDelete("�G����110", 2000, null, true);

	Wait(1000);

$TEXTBOX_TYPE="Scrap";

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
In a single blink&, the white space turned into an evening 
sea&. This is&.&.&.

{
	SetVolumeEX("SE02", 3000, 0, null);
	SetStream("@dm012*", 15360);
	SoundPlay("@dm012",4000,450,true);
}
I remember it from my childhood&.
It feels like a very important place&.

I'd always talk with someone while sitting on the beach 
and staring at the sea&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N02");
//	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u110", 110, -732, -406, "cg/ev/l/evf10�L���̒��̕��̉e_l.jpg");
	Fade("�G�d�u110", 250, 1000, null, true);

	FadeDelete("�G�d�u110", 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
That's&.&.&.

&.&.&.Father?

&.&.&.Oh&, yes&.
I remember&.

I'd always speak to my friends inside my head&, with my 
heart and mouth closed to the other people around me&.

The one who set me free from that was my father&.

I had no blood relation because I was born in a lab&, but 
he was my father&.

The man who opened up my world and showed me the light&.

"It's all right&. You can always destroy this world any 
time&."


He said that to me&.

{
	St("C",740, @0,@0,"st�����t_�ʏ�_normal");
	FadeSt("C",200,true);
}
Right now&.&.&. "I" am standing where my father was&.

The pure white "me" had looked exactly like me this time&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�@_�ʏ�}���g�Ȃ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/4000010a06">
"Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Ren looks at me with serious eyes&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�@_�ʏ�}���g�Ȃ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/4000020a06">
"We were once all part of one whole&. Then you&, me&, and him
 separated&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/4000030a06">
"We can't unite or else you'll turn into the personality
 you were in the begninning&. In short&, we'll disappear&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�@_�ʏ�}���g�Ȃ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/4000040a06">
"But I gained a will&. You acknowledged me as another
 existence&. You accepted me&. So I won't disappear&."

{
	Fw("fw�@_�ʏ�}���g�Ȃ�_normal2");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/4000050a06">
"But he&.&.&. he's always been lamenting over you not
 accepting him&, over not being able to return to you&.
 Always&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
When I look over to the other me&, the "me" that was once 
expressionless had a somewhat helpless face on&.

I always thought he was a hostile thing&.

That he wouldn't stop at trying to take over me&.

But I may have been wrong&.

That's what I thought when I looked at the expression of 
the other me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/4000060a01">
"&.&.&.I was scared of you using Scrap&. I thought that
 breaking into peoples' minds was the same thing as
 killing them&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/4000070a01">
"I was scared of myself using it&.&.&. No&, I was scared of
 myself becoming a person that had a sense of superiority
 because of my power&."

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/4000080a01">
"When I had that incident in Rhyme and knew it was like
 that&, I was incredibly afraid&. So I got rid of it&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/4000090a01">
"So I forgot that I could use Scrap&. But that ended up with me denying you&."

{
	Fw("fw���t_�ʏ�_worry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/4000100a01">
"I didn't look into myself&, and lived a peaceful life&.&.&.
 I always thought that way&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/4000110a01">
"But you're me&, so I hated that I let myself forget&. So
 that's why you appeared whenever I used Scrap&. To tell me
 that 'I' was here&."

//if unclear, by "appeared" he means why the other Aoba took over him when he used scrap&. so he'd notice him

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�����t_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm56/4000120b01">
"&.&.&.&.&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/4000130a01">
"While you rose up&, I thought you were against me&. I jumped to that conclusion and refused you&.&.&."

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/4000140a01">
"Sei said it earlier&. That he had one regret&. I
 misunderstood you&."

{
	Fw("fw���t_�ʏ�_serious");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/4000150a01">
"So I won't run away or deny you any more&. You're right
 here inside of me&. In the past&, in the present&, always&."

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/4000160a01">
"I'm sorry for all that I did&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G�ʂP", 10000);

	DeleteAllSt(0,true);

	FadeDelete("�G�ʂP", 1000, null, false);

	CreateTextureEX("�G�d�u120", 120, -373, -573, "cg/ev/l/ev564���t�A����F�߂�_l.jpg");
	Move("�G�d�u120", 1000, -115, -573, Dxl1, false);
	Fade("�G�d�u120", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
When I finished talking&, I walked up to "myself"&.

His body faintly quivers and I take a deep breath&.

When I get closer to him&, I could see all of the emotion 
in his eyes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Move("�G�d�u120", 2000, -371, -103, Dxl1, true);

	CreateSE("SE02","se�l��_����_�ߎC��05");
	MusicStart("SE02",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
He slowly raised his hands&.

I rose mine to his&.&.&. and lightly touched his palms&.

A small warmth grew between our hands&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u121", 121, Center, Middle, "cg/ev/ev564���t�A����F�߂�.jpg");
	Fade("�G�d�u121", 1000, 1000, null, true);
	Delete("�G�d�u120");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
His unsteady eyes reflected in mine and his lips moved 
ever so slightly&.

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm56/4000170b01">
"&.&.&.Thank you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�[��_����_�͔����t����");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 2000, 500, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
With a hoarse voice&.&.&.
He bursts into a dazzling light&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/4000180a01">
"&.&.&.-!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	Fade("�G�F��", 500, 1000, null, true);
	FadeDelete("�G�F��", 5000, null, false);

	CreateSE("SEmv","se���t������");
	MusicStart("SEmv",0,850,0,1000,null,false);
	
	CreateMovieSPvol("�G����122", 122, Center, Middle, false, false, "dx/mv5640b.ngs",0);
	Delete("�G�d�u121");
	CreateTextureSP("�G�d�u120", 120, Center, Middle, "cg/ev/ev564���t�A����F�߂�a.jpg");

	MovieSkipPlay("�G����122","MF_mv5640b");
	//Wait(18000);

	SetVolumeEX("SE*", 2000, 0, null);
	FadeDelete("�G����122", 2000, null, true);
	Delete("�G����122");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
When I opened my eyes&, "I" was no longer there&.

//if "I" isn't as obvious, replace it with "the other me"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm5650.nss"]

}
