//<continuation number="840">
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


scene dm2192h.nss_MAIN
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
	#ev219�m�C�Y�Y��t�F��=true;
	#ev219�m�C�Y�Y��t�F��a=true;
	#ev219�m�C�Y�Y��t�F��b=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2193h.nss";

}


scene dm2192h.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm012",0,450,true);

	PrintBG("��w�i", 30000);

//	OnBG(10,"bg302012_5_�O���b�^�[����02");
//	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -1019, -487, "cg/bg/l/bg302012_5_�O���b�^�[����02_l.jpg");
	CreateTextureEX("�G�w�i101", 101, Center, Middle, "cg/bg/bg302011_5_�O���b�^�[����01�x�b�h�p.jpg");
	Fade("�G�w�i101", 0, 1000, null, true);

	FadeDelete("��w�i", 0, null, true);

	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000470a03">
"You sure came a lot&."

{
	Fw("fw���t_�ʏ�_shy2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000480a01">
"Shut up&.&.&. Wipe it off already&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
I started to get up to go get a tissue&, but Noiz suddenly  brought his hand to his mouth&.

{
	Fw("fw���t_�ʏ�_shy");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000490a01">
"!!"

{
	FwPro("fw�m�C�Y_�ʏ�X�q�Ȃ�_cool2",2500,"fw�m�C�Y_�ʏ�X�q�Ȃ�_normal3");
//	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal3");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000500a03">
"Bitter&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
Noiz licks his fingers that were covered in my semen with  an extremely casual expression&.

I-I've said many times that he has no shame&.&.&.
But&.&.&. He licked it&.&.&.

Besides&, only I came&. Noiz hasn't shown signs of being 
very aroused at all&.

&.&.&.&.&.

&.&.&.That's not fine at all&.

As someone older than him&, and as a man&.

Since we've come this far&, I have to do it too&.

If my hand's no good&.&.&.

&.&.&.I hear the sound of a switch flipping in my head&.

{
	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i100", 500, @0, @30, Dxl1, false);
	Fade("�G�w�i101", 500, 0, null, true);
}
I lifted my body up&, got on all fours and fell to Noiz's 
feet&.

{
	Fw("fw�m�C�Y_�ʏ�X�q�Ȃ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000510a03">
"What?"

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000520a01">
"Just let me do this&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u120", 120, -137, -150, "cg/ev/l/ev219�m�C�Y�Y��t�F��a_l.jpg");

	CreateTextureEX("�G�d�u110", 110, -1023, 0, "cg/ev/l/ev219�m�C�Y�Y��t�F��_l.jpg");
	Move("�G�d�u110", 1000, -1023, -224, Dxl3, false);
	Fade("�G�d�u110", 1000, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
Noiz's cock is still quite limp; he apparently hadn't felt it very much&.

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 2000, 0, null);
}
Noiz throws me a questioning look when I lean over his 
crotch&. I support his cock with one hand and bring my 
face closer to it&.

Lightly licking at the tip&, I gradually open my mouth and 
take it in&.

Noiz is larger than he looks&, and my mouth is filled 
immediately&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000530a03">
"&.&.&.Haa&.&.&. nh&."

&.&.&.Oh&.

I hear the faint sound of him exhaling&.

Maybe&, he&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE03","se�l��_����_�L�X01");
	MusicStart("SE03",0,300,0,1400,null,false);

	CreateSE("SE01","se�l��_����_�ߎC��22");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se�[��_��_�͂˂�06");
	MusicStart("SE02",0,400,0,800,null,false);

	CreateTextureEX("�G�d�u111", 111, Center, Middle, "cg/ev/ev219�m�C�Y�Y��t�F��.jpg");
	Move("�G�d�u110", 1500, -723, -324, Dxl3, false);
	Fade("�G�d�u111", 1500, 1000, null, true);
	Delete("�G�d�u110");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0191]
I slowly move my head up and down&, rubbing him against the walls of my mouth&.

Naturally&, this is my first time doing this&.

But now&, more than hesitation or embarrassment&, I feel a 
desire to make Noiz come&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u112", 112, -508, -242, "cg/ev/m/ev219�m�C�Y�Y��t�F��a_m.jpg");
	Move("�G�d�u112", 500, -508, -277, Dxl3, false);
	Fade("�G�d�u112", 500, 1000, null, true);
	Delete("�G�d�u111");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000540a01">
"Nn&.&.&. nh&."

If I lick here with my tongue&, and move my hand like this&.&.

Because we both have dicks&, I somewhat know what to do 
even if this is my first time&.

But when his piercings touch my tongue&, it feels kinda 
strange&.&.&. 

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000550a01">
"Nh&.&.&. ha&, nh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u112", 1000, -60, -63, Dxl1, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000560a03">
"&.&.&.Nh&."

I have a feeling I heard a moan and look up at Noiz&. 
He had closed his eyes at some point&.

My heart jumps a little at the sight&.

The guy who was saying cocky things a while ago is now 
feeling good because of what I'm doing&.

I think I'm almost thrilled&, here&.

I want to&.&.&. see more of Noiz's erotic face&.

With such a desire emerging in me&, I naturally focus on 
the act&.

I focus on teasing the places that I thought felt good&, 
and keep prying the dent of the tip while stroking his 
stick and bags with my hand&.

Even when his piercings touch my teeth with a clicking 
sound&, I'm not bothered at all&.

{
	CreateSE("SE01","se�l��_����_�ߎC��24");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�[��_��_�͂˂�06");
	MusicStart("SE02",0,500,0,1200,null,false);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000570a01">
"Huu&.&.&. Nn&, ah&.&.&. hff&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000580a03">
"&.&.&.Nh&, ngh&.&.&."

Noiz's breathing intervals become shorter&, and my head is  suddenly given a strong push&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_�ߎC��05");
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("SE02", 1500, 0, null);

	CreateTextureEX("�G�d�u113", 113, -137, -100, "cg/ev/l/ev219�m�C�Y�Y��t�F��_l.jpg");
	Move("�G�d�u113", 500, -137, -150, Dxl1, false);
	Fade("�G�d�u113", 500, 1000, null, true);

	Fade("�G�d�u112", 0, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
When I look up&, Noiz stares at me as if he wants to say 
something&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000590a01">
"&.&.&.What?"

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000600a03">
"&.&.&.A little stronger&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000610a01">
"Stronger&.&.&."

{
	CreateSE("SE02","se�l��_����_�ߎC��22");
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("SE02", 2000, 0, null);
}
I separate my mouth from Noiz and raise my head&, then I tryto squeeze my hand with more power and check his reaction&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000620a01">
"Like this?"

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000630a03">
"No&, more&.&.&."

{
	Fade("�G�d�u120", 500, 1000, null, true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000640a03">
"&.&.&.Bite it&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000650a01">
"!?"

What did he say just now?

Bite him?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0240]
Noiz presses down on my head and urges me to continue&.

I take Noiz in my mouth again&, slightly confused&.

Bite&.&.&. Really bite? With teeth?
Won't it hurt?

My head is full of question marks&.

But he really said to bite&, didn't he&.&.&.

{
	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,800,null,false);
}
I fearfully and gently tried to apply my teeth on the tip&.

When I feel my teeth sinking into the meat&, it scares me 
a bit&.&.&.

It hurts to just imagine the same being done to me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Delete("�G�d�u113");
	Fade("�G�w�i101", 0, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000660a03">
"&.&.&.Hurry&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�d�u120", 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0251]
He urges me on&.
I can only prepare myself for the worst here&.

He's got piercings all over his body&, so it's fine&.&.&. 
isn't it?

It's fine&. &.&.&.Maybe&.

{
	CreateSE("SE02","se�l��_����_�ߎC��14");
	MusicStart("SE02",0,700,0,1000,null,false);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000670a01">
"&.&.&. &.&.&.Ngh!"

I close my eyes and chew Noiz's shaft with my back teeth&.

&.&.&.&.&.

The feeling of teeth sinking into the meat&, it's 
indescribable&.

Does it hurt after all&.&.&.? Is he fine?
He can't be bleeding&, right?

I nervously look up at Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u114", 114, -137, -150, "cg/ev/l/ev219�m�C�Y�Y��t�F��b_l.jpg");
	Fade("�G�d�u114", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000680a03">
"&.&.&.Nhn&."

Noiz had closed his eyes&, with an expression that I 
could even call ecstacy&.

&.&.&.Are you serious&.

&.&.&.He's enjoying it?

Does he only feel it when bitten?

It's strangely uplifting&.&.&. I think&.

My heart starts to run like crazy&.

This is bad&.
This dangerous feeling&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�[��_��_�͂˂�04");
	MusicStart("SE02",0,450,0,900,null,false);

	CreateTextureEX("�G�d�u112", 112, -508, -242, "cg/ev/m/ev219�m�C�Y�Y��t�F��a_m.jpg");
	Move("�G�d�u112", 0, -222, -454, null, true);
	Fade("�G�d�u112", 0, 1000, null, true);
	Move("�G�d�u112", 500, -322, -454, Dxl1, false);
	FadeDelete("�G�d�u114", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0270]
Convincing myself that it's fine&, I take Noiz in my mouth  again and rest my teeth on the tip of his cock&.

I bite him strongly but cautiously&, nibbling&, and try 
pulling on the piercings with my teeth&.

While doing that&, I put my nails against his shaft like 
I'm scratching it&, and squeeze it tightly in my palm&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000690a03">
"Uh&.&.&. haah&.&.&. uh&.&.&."

When gasps leak from Noiz's mouth&, the depths of my body 
tingle ever so faintly&.

I'm profusely happy that I'm able to make him feel good&.

I intently caress Noiz's shaft with both my mouth and hand&.

{
	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000700a03">
"Ah&, ha&.&.&."

Noiz&, who has his eyes closed&, knits his eyebrows and 
slightly moves his hips&.

The fluids filling my mouth are not only saliva&, but 
Noiz's precum too&.

When I did it by hand a while ago he wasn't reacting&, 
but now he properly is&.

Noiz has become considerably big&, and is almost unavoidablytouching the back of my throat&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��22");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�[��_��_�͂˂�06");
	MusicStart("SE02",0,400,0,1200,null,false);

	CreateTextureEX("�G�d�u115", 115, -692, -419, "cg/ev/l/ev219�m�C�Y�Y��t�F��a_l.jpg");
	Move("�G�d�u112", 500, -322, -354, Dxl3, false);
	Move("�G�d�u115", 500, -692, -522, Dxl1, false);
	Fade("�G�d�u115", 500, 1000, null, true);
	Delete("�G�d�u112");
	Delete("�G�w�i101");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0280]
Despite that&, I ignore my own agony and continue earnestly because I want him to come&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000710a03">
"Guh&, ha&, haah&.&.&."

I sip the bitter fluid and continue to bite down on Noiz's cock&, when suddenly he holds his breath&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000720a03">
"&.&.&.Nnh&.&.&. Ugh!!"

Noiz's body shakes greatly&, his cock pulsing in my mouth&.&.&.
<k>And soon enough&, my mouth is filled with a lukewarm liquid&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�[��_��_�͂˂�06");
	MusicStart("SE02",0,300,0,1000,null,false);

	CreateTextureEX("�G�d�u116", 116, -692, -522, "cg/ev/l/ev219�m�C�Y�Y��t�F��b_l.jpg");
	Move("�G�d�u115", 700, -627, -568, Axl1, false);
	Move("�G�d�u116", 700, -627, -568, Axl1, false);
	Fade("�G�d�u116", 700, 1000, null, true);
	Delete("�G�d�u115");

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0290]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/9000730a01">
"&.&.&.! &.&.&.Gh&."

Just before the semen can spill from my mouth&, I 
involuntarily swallow it&.

&.&.&.It's bitter&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("�G�d�u117", 117, Center, Middle, "cg/ev/ev219�m�C�Y�Y��t�F��b.jpg");
	Fade("�G�d�u117", 500, 1000, null, true);
	Delete("�G�d�u116");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0300]
When I separate my lips&, the leftovers that I couldn't 
swallow drips down my chin&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw�m�C�Y_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0301]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/9000740a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q�Ԃ�");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i100", 500, @0, @-30, Dxl1, false);
	FadeDelete("�G�d�u117", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0302]
Noiz&, who's face is faintly flushed&, looks at me&, 
breathing roughly&.

Maybe it's because he just came&, but he doesn't have that 
usual tough guy look to him anymore&.

It might even be a little cute&.

Thinking of how he's now like this because of what I did&, 
I feel a strange sense of accomplishment and satisfaction&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2193h.nss"]

}
