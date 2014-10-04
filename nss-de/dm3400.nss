//<continuation number="130">
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


scene dm3400.nss_MAIN
{
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
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3410.nss";

}


scene dm3400.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);
	PrintBG("上背景", 30000);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	CreateTextureEX("絵背景190", 190, Center, Middle, "cg/bg/bg302021_5_グリッター居間天井.jpg");
	CreateTextureEX("絵背景200", 200, Center, Middle, "cg/bg/m/bg302021_5_グリッター居間天井_m.jpg");
	SetShade("絵背景190", MEDIUM);
	SetShade("絵背景200", MEDIUM);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,500,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");
}
Mink leaves one hand on my neck and gropes my lower half 
with the other&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/0000010a05">
"Raise your knees&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ10");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateSE("SE02","se人体_動作_ベルト外す01");
	MusicStart("SE02",0,500,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I bend my knees as he says&, taking a pose that will make 
it easy to slip my clothes off&. He roughly pulls off my 
pants and underwear&.

If I said I wasn't humiliated&.&.&. I'd be lying&.

But now it feels even more intense&.

Mink stretches my ass with his fingers&, the pain from 
being violated yesterday still there&.

He places his hand on my thigh and lifts it up&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg302021_5_グリッター居間天井");
	FadeBG(500,true);

	CreateSE("SE02","se人体_動作_衣擦れ25");
	MusicStart("SE02",0,400,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/0000020a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
My heart starts to pound even harder&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
It stings just from him rubbing&, I wonder what will happen if he goes inside again&.&.&.

I know what without having to think about it&.

But I didn't think of escaping any more&.

Instead&.&.&. I just held out hoping for something to happen 
before the violent pain hit&.

&.&.&.I've completely fallen&.
Into the pleasure of just floating along&.

I know it's too late now&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,10,null, true);
	Delete("絵板写");

	CreateSE("SE02","se人体_動作_衣擦れ02");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/0000030a01">
"Ungh&.&.&. Hi- ahhhhh&.&.&.!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Mink puts himself in and the pain attacks every inch of my body&, my organs feeling as if they're being torn apart&. 

Mink pushes his arm into my chest and holds down my neck 
with his other hand still&, his nails digging into my 
skin&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/0000040a01">
"Hiyah&.&.&. Guh&, ah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The sound of metal rings in my ears and the pain pierces 
my chest&.

The shocks to my body raise my voice; I've been overtaken 
by Mink&.

The pain is as if sharp knifes were tearing my insides 
apart&.

Although it's only happening in my lower half&, I can feel 
blood gushing into my mouth&.

Prying me open over and over&.&.&. Soon my body might even 
transform into something made just for Mink&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,10,null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/0000050a01">
"Unng&.&.&. Ah&.&.&. Guah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
The chattering of my teeth hurt just as much&.

But the sensation like flying runs through my body at the 
same time&.

It&.&.&. feels so good&, and I start to shiver&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,30,null, true);
	Delete("絵板写");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/0000060a01">
"Fu&, &.&.&.Ugh&, &.&.&.Ah&, hck&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,500,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Mink holds onto my waist with his hand&, shaking me with 
all his might&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/0000070a05">
"Let out your voice&. More&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
Whispering&, Mink's hand over my neck grips harder&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_絞める01");
	MusicStart("SE01",0,500,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/0000080a01">
"Hii&, ah&, ha&.&.&. Hck- ah&, &.&.&.Ah!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
His hand grasping even tighter on my neck&, I begin to 
suffocate again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
He penetrates me even harder and my voice turns into 
labored breathing&.

I don't have the breath to let out my voice&, all that 
comes out of my mouth are strange sounds&. Even my nose
hurts now&, and the tears are overflowing&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_絞める01");
	MusicStart("SE01",0,500,0,800,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ10");
	MusicStart("SE02",0,700,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

	SetVolumeEX("SE*", 1500, 0, null);

	Fade("絵背景190", 3000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/0000090a01">
"Ugh&.&.&. Haah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/0000100a05">
"Is it painful?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
Mink's voice sounds so close yet so far away and I can't 
exactly tell what he's saying&.

All I can hear is the pounding in my head&.

I feel my nerves start to go numb and the pain dully melts away&.

When Mink starts to thrust again&, it's a dizzy but 
pleasant feeling&.

What's this&.&.&.?

It hurts&, but feels so good&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 50, 0, 0, 500, null, true);
	Delete("絵板写");

	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/0000110a01">
"Ha&.&.&. Ah&.&.&. Ah&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
My voice grows louder as he pushes into me&.

I don't feel anything&, but my cock is completely hard and 
is leaking a transparent fluid&.

{
	Fade("絵背景200", 2000, 800, null, false);
}
But halfway through&, my consciousness started to flicker&.

The feeling of choking disappears and my eyelids go heavy&.

It was the same way yesterday&.

My awareness drifts off&.&.&.

Today&, I'm already&.&.&.

It must have been the same thing yesterday&, and Mink lets 
his hold off my neck with good timing&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1200,null,false);

	Fade("絵背景*", 250, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/0000120a01">
"Guh- Ugh! Hck&, Gck&, guh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Suddenly&, the oxygen flows into my lungs and I gasp for 
air&, face wet with tears&.

But Mink won't let me off so easily&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 250, 0, 50, 0, 0, 500, null, true);
	Delete("絵板写");

	SetVolumeEX("SE*", 1500, 0, null);

	CreateSE("SEL01","se擬音_精神_超音波01L");
	MusicStart("SEL01",3000,200,0,600,null,true);

	Fade("絵背景*", 3000, 800, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/0000130a01">
"Ungh&.&.&. Kuh&, Hck&, ah- ahhhh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
I&.&.&. don't understand what's happening to me anymore&.

I'm just surrending myself to the pleasure&.

{
	SetVolumeEX("@dm*", 5000, 0, null);
	SetVolumeEX("SEL01", 5000, 800, null);
	CreateColorSP("絵色黒", 2000, "000000");
	DrawTransition("絵色黒", 1000, 0, 500, 500, null, "cg/data/slide_05_00_0.png", true);
}
For a short time&.&.&.I felt my consciousness drift off again&.

Unable to think&, unable to comprehend&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SEL01", 1000, 1000, null);
	DrawTransition("絵色黒", 1000, 500, 1000, 500, null, "cg/data/slide_05_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
I close my eyes&.&.&. and my vision goes black&.

{
	SetVolumeEX("SEL01", 1000, 1200, null);
}
&.&.&.&.&.

{
	SetVolumeEX("SEL01", 1000, 1500, null);
}
&.&.&.&.&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 150, 0, null);

	Wait(500);

	CreateColorSP("絵色黒弐", 5000, "000000");
	Fade("絵色黒", 0, 0, null, true);
	CreatePlainEX("絵板写弐", 4000);
	SetTone("絵板写弐", NegaPosi);
	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");

	Fade("絵色黒弐", 0, 1000, null, true);

	Wait(50);

	Fade("絵板写弐", 0, 1000, null, true);
	Delete("絵色黒弐");

	Wait(80);

	Fade("絵フラッシュ白", 0, 1000, null, true);
	Delete("絵色黒弐");
	Delete("絵板写弐");

	Wait(80);

	Fade("絵色黒", 0, 1000, null, true);
	Delete("絵ＥＶ*");
	FadeDelete("絵フラッシュ白", 600, null,true);

	SetVolumeEX("@dm*", 1000, 0, null);
	ClearFadeAll(1000, true);

//※次ファイル["dm3410.nss"]


}
