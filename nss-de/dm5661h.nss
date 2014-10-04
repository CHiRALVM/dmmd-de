//<continuation number="1660">
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


scene dm5661h.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#ev566蓮とＨ前戯=true;
	#ev566蓮とＨ前戯a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5662h.nss";

}


scene dm5661h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm014",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg210011_2_暴露海と砂浜");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000260a01">
"&.&.&.I want to touch you more too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu蓮_通常マントなし_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000270a06">
"&.&.&.Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
Ren hugs me even tighter than before and we lose our 
balance&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000300a01">
"R-Ren&, wait&, you're hugging too&.&.&. Uwah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorSP("絵黒幕", 5000, "BLACK");

	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	CreateTextureSP("絵背景200", 200, -512, -300, "cg/bg/l/bg210011_2_暴露海と砂浜_l.jpg");

	Move("絵背景200", 1000, -512, -100, Dxl1, false);

	DrawDelete("絵黒幕", 250, 100, null, "slide_02_01_0", false);

	Wait(1000);

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se擬音_水_はねる10");
	MusicStart("SE02",0,700,0,1000,null,false);

//	CreateSE("SE02","se人体_足音_歩く水01ゆっくり");
//	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("SE02", 2000, 0, null);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
With no support&, I wobbled and fell on top of Ren&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000310a06">
"Sorry&, are you all right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000320a01">
"&.&.&.Haha&, you surprised me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Ren was below me so it didn't really hurt much&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000330a06">
"Aoba&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵背景201", 201, -512, -523, "cg/bg/l/bg210011_2_暴露海と砂浜_l.jpg");
	Move("絵背景201", 500, -512, -573, Dxl1, false);
	Fade("絵背景201", 500, 1000, null, true);

	Delete("絵背景200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
Ren moved his face into the nape of my neck&.
My heart nearly skipped a beat&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000331a01">
"What?"

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000340a06">
"&.&.&.I can't believe that I'm actually able to touch you
 like this&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ08");
	MusicStart("SE01",0,600,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵ＥＶ300", 300, -648, 0, "cg/ev/l/ev566蓮とＨ前戯_l.jpg");
	Move("絵ＥＶ300", 1000, -648, -70, Dxl1, false);
	Fade("絵ＥＶ300", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
Ren held me even closer with his face pushed into my 
shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
He sat there&, almost like he was taking in my scent&.

It was a loving gesture&, so I gently pet his head&.

Whatever&.&.&. data this was based on&, it's nice that Ren has a larger build than me here&. He's taller than me too&.
But it's also a little frustrating&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ300", 1000, -648, -170, Dxl3, false);

	CreateTextureEX("絵ＥＶ301", 301, Center, Middle, "cg/ev/ev566蓮とＨ前戯.jpg");
	Fade("絵ＥＶ301", 1000, 1000, null, true);

	Delete("絵ＥＶ300");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000350a01">
"&.&.&.Why are you so much bigger than me?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
I playfully ruffled Ren's hair and he lifted his head&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000360a06">
"It can't be helped&, it's how the settings are&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000370a01">
"I know that&. It's kinda irritating&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000380a06">
"Do you hate it?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000390a01">
"Nah&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000400a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ*", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
We just stare into each other's anxious eyes silently&.

His eyes are a tender amber&.

They aren't that different from the ones as a dog&.
They're the eyes of the Ren who was always with me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000410a06">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
His breath tickles my cheek when he says my name&.

He quietly blinked&, and moved his face in closer&.&.&.

Then our lips met naturally&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000420a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
A small spark runs through my body&.

Right now I'm thinking of how I'm doing something 
unimaginable&.

I mean&, Ren is also me&, and&.&.&.

Well&, I didn't hate it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000430a01">
"Mn&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0124]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000440a06">
"&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
Ren bit at my lips and licked them without hesitation&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ302", 302, -1448, -120, "cg/ev/x/ev566蓮とＨ前戯a_x.jpg");
	Move("絵ＥＶ302", 1000, -1448, -169, Dxl1, false);
	Fade("絵ＥＶ302", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
I responded by opening my mouth a little and his tongue 
came in&.

Ren and I entwine our tongues together&.

It's both tender and warm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000450a01">
"Fu&.&.&. Ha&.&.&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000460a06">
"&.&.&.&.Ngh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
As we rubbed our tongues together&, dim sparks of 
electricity ran down my spine&.

I was swallowing the saliva that came out&, with a lot 
still dripping out from our mouths&.

Ren would sometimes suck hard on my tongue and bite it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵ＥＶ302", 500, -1448, -221, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000470a01">
"Mn&.&.&.Ung&.&.&.Ngh&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000480a06">
"Fu&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ08");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ302", 1500, -1715, -752, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
While we kissed&, Ren went under my shirt and touched my 
chest&.

It was so ticklish&.&.&. the way he carefully moved his hands around that I just had to laugh&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	FadeDelete("絵ＥＶ*", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000490a01">
"&.&.&.Mn&, fu- haha!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蓮_通常マントなし_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000500a06">
"&.&.&.Aoba?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
He stops his hands and looks at my face&.

I tried to stop laughing&, but I couldn't even withstand 
his hands on my skin&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cheese2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000510a01">
"Sorry&.&.&. Haha!"

{
	Fw("fw蓮_通常マントなし_worry");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000520a06">
"&.&.&.Is something weird?"

{
	Fw("fw蒼葉_通常_confuse");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000530a01">
"No&, it's not that&. Sorry&. I'm fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蓮_通常マントなし_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000540a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
Ren looks at me with a slightly worried face and licks 
my lips&.

I become a little happier because it reminds me of how 
he'd do that as a puppy&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0162]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000550a01">
"You really are you&."

{
	Fw("fw蓮_通常マントなし_worry");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000560a06">
"There's no helping that&. It's because I've been a dog
 for so many years&."
 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0163]
Ren says that with a slightly troubled tone&.

I can almost see him with his ears folded down&. I put my 
lips to his chin&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_happy");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0164]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000570a01">
"That's not it&. It's just that you're definitely my Ren&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蓮_通常マントなし_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000580a06">
"&.&.&.Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ303", 303, -1024, -572, "cg/ev/l/ev566蓮とＨ前戯a_l.jpg");
	Move("絵ＥＶ303", 1000, -1024, -499, Dxl1, false);
	Fade("絵ＥＶ303", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
Ren starts to move his hands again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0172]
He's touching me even more gently than before&, with his 
fingertips grazing me&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000590a01">
"-!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0173]
I hold my breath; it's still too ticklish&.

{
	CreateSE("SE02","se人体_動作_衣擦れ08");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE02", 2000, 0, null);

	Move("絵ＥＶ303", 1000, -1024, -292, Dxl1, true);
}
When his fingertips lightly touch my nipple&, they suddenly turn sensitive&. Realizing that makes my cheeks turn red&.

{
	CreateSE("SE01","se人体_動作_ベルト外す01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
While he felt around&, Ren moved his free hand to my lower 
half&. He skillfully unbuckles my belt&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0174]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000600a01">
"Mn! Nghh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
I'm too late to stop him&, and he opens up my pants&.

His hand moves down to my dick&.
He pulls away from the kiss&, flustered&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000610a01">
"&.&.&.Ha&, hey&, wait-!"

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000620a06">
"&.&.&.I won't&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000630a01">
"! Hey&, Ren&.&.&.Ah!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ08");
	MusicStart("SE01",0,500,0,800,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateTextureEX("絵ＥＶ304", 304, -124, -499, "cg/ev/l/ev566蓮とＨ前戯a_l.jpg");
	Move("絵ＥＶ304", 1000, -355, -338, Dxl1, false);
	Fade("絵ＥＶ304", 1000, 1000, null, true);

	Delete("絵ＥＶ303");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182]
I wasn't done speaking&, but Ren had pulled out my dick 
from my underwear&.

The blood rose to my face when I was exposed half-hard&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
It was embarrassing how I was leaning up against Ren&, 
completely open and visible&. 

And&.&.&. my heart rate raised way too quickly when he 
whispered "I won't" into my eardrums&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000640a01">
"Ren&.&.&.! This position is a little&.&.&.!"

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000650a06">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0192]
My lips were shut with the sounds of an animal's groans in my ears&.

While noisily kissing me&, Ren started to loosly stroke my 
cock&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ10");
	MusicStart("SE01",0,700,0,1200,null,false);

	Move("絵ＥＶ304", 500, -432, -219, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000660a01">
"Fu&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
It's vexing how numbing pleasure runs down my back&.
It was a prelude to before I got lost in the pleasure&.

Ren broke the kiss some times to lick my cheeks and chin&, 
while increasing the speed and strength of his strokes&.

My breath turns raspy while my lower body started to throb&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ304", 1000, -432, -110, Dxl1, false);

	CreateTextureEX("絵ＥＶ305", 305, Center, Middle, "cg/ev/ev566蓮とＨ前戯a.jpg");
	Fade("絵ＥＶ305", 500, 1000, null, true);

	Delete("絵ＥＶ304");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0202]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000670a01">
"-Pwah&.&.&. Agh&.&.&. Ngh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0203]
In the kiss&, a sweet bitterness swelled in my chest&.

I hate the voice I'm making&, but I can't hold it down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0204]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000680a06">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
Ren licks my lips with the tip of his tongue again&.

When I look down&, I see Ren rubbing my tip&.

His fingers were wet with pre-cum&.&.&. And&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000700a06">
"Aoba&.&.&. This here is so&.&.&. warm&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000710a01">
"-! Don't say stuff like tha&.&.&. Ah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0212]
When I try to scold him&, he begins to jerk me off hard 
again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ306", 306, -887, -15, "cg/ev/l/ev566蓮とＨ前戯a_l.jpg");
	Move("絵ＥＶ306", 500, -781, -71, Dxl1, false);
	Fade("絵ＥＶ306", 500, 1000, null, true);

	Delete("絵ＥＶ305");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000720a01">
"Ugah&.&.&. Stupid- Ren&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
I'm stiff hard&, almost on the peak&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0222]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000730a01">
"Stop&.&.&. I said don't&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0223]
I try to stop Ren's fast pace&. But I'm powerless against 
him&.

My cock is covered by a thin layer of pre-cum&.

I'm going to come soon like this&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1500,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

	Move("絵ＥＶ306",500, -640, -184, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0224]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000740a01">
"Ngh&, ha&, Ren&, wai- ah&.&.&. W-Wait!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000750a06">
"&.&.&.I can't&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000760a01">
"&.&.&.Eh?"

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000770a06">
"I'm sorry&."

All thoughts leave my mind when he utters that&.

And then&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ307", 307, Center, Middle, "cg/ev/ev566蓮とＨ前戯a.jpg");
	Move("絵ＥＶ306", 500, -532, -260, Dxl1, false);
	Fade("絵ＥＶ307", 500, 1000, null, true);
	Delete("絵ＥＶ306");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0231]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000780a01">
"Ngah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
Ren chews at my earlobe in heat&.

{
	CreateSE("SE01","se擬音_水_はねる03");
	MusicStart("SE01",0,300,0,1200,null,false);
}
His tongue swirls around in my ear&.

I shudder at the watery sounds in my eardrums and try to 
push away from Ren&.

But he just held me fast and jerked me off even harder in 
response&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000790a01">
"Ren&.&.&. Ah&.&.&. Ren&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	FadeDelete("絵ＥＶ*", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0242]
As I desperately called out his name&, he finally took his 
drenched hand off of me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人物_動作_舐める01");
	MusicStart("SE01",0,500,0,1400,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0243]
As I gasped for air&, Ren suddenly started licking his wet 
hand&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shy2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0244]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000800a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0245]
His fangs peeked through his lips&. I felt a shock from how animalistic it was&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5662h.nss"]

//	ClearFadeAll(1000, true);


}