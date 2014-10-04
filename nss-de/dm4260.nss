//<continuation number="170">
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


scene dm4260.nss_MAIN
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
	$GameName = "dm4270.nss";

}


scene dm4260.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -514, -574, "cg/bg/l/bg301041_5_プラチナジェイル通り路地02_l.jpg");

	FadeDelete("上背景", 0, null, true);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/6000010a01">
"Clear!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/6000020c05">
"You know&, we're pretty buddy-buddy with Toue-san&. He takes care of his priveledged class&. That's why he doesn't 
 complain when we get violent&."

{	Fw("fwmイナダ_通常_normal");}
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/6000030c05">
"I feel bad for people who pick a fight with us&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
He raises his face and sneers&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/6000040a01">
"Shit&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
When Clear first heard their footsteps&.&.&.

If I'd only believed Clear immediately and ran with him&, 
this never would have happened&.

What Clear had said was true&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
It's all my fault&.&.&.

The regret swells in my chest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/6000050c05">
"This is the end&. I'll even do it so you don't have to take off your mask yourself&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
The glasses guy pulls out a small bottle from his pocket&. 
Inside it is a clear liquid&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/6000060c05">
"Do you know what this is? &.&.&.Sulfuric acid&.
 This'll be fun&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※びしゃびしゃと硫酸が注ぎ、じゅわーと煙が出る
	CreateSE("SE01","se擬音_精神_煙る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/6000070a01">
"!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
That substance&.&.&.
He turns the bottle over above Clear's gasmask&.

The liquid falls onto Clear's head&, and then I hear the 
sound of something burning and a winding black smoke 
appears&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/6000080c05">
"Haha&.&.&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/6000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
I'm so terrified&.&.&. that I can't breathe&.
My legs shake&.

Clear&.&.&. No&.&.&.!

The awful smell of his hair and skin burning rises through the air&.

With Clear facing up&, he twitches and then doesn't move&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
He must be in so much pain that he can't move&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/6000100a01">
"&.&.&.Clear!! No&, Clear! Get up!!"

{	Fw("fw蒼葉_通常_shout2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/6000110a01">
"Clear!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	SetVolumeEX("@dm*", 1000, 0, null);
//	FadeDelete("絵背景100", 500, null, true);

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/6000120a04">
"Yes&, Master&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
&.&.&.Huh?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵背景100", 500, null, true);

	Wait(500);

	CreateSE("SE01","se擬音_精神_煙る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
As the smoke rises&, Clear abruptly stands up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/6000130a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/6000140c05">
"Hey&, what's going on with this guy? What the&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0162]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/6000150a04">
"Are you done yet? Please let go of Master&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_足音_歩く01");
	MusicStart("SE01",0,700,0,900,null,false);
	DeleteSt("C", 200,true);
	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
Clear walks in a calm manner towards the man with glasses&.

The once lively man's expression freezes and he staggers 
back&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/6000160c05">
"D-Don't come over here! You monster!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmチンピラA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm42/6000170e42">
"He's a monster!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,600,0,1000,null,false);
	CreateSE("SE02","se人体_足音_走る03複数L");
	MusicStart("SE02",0,600,0,800,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
They all scream pitifully&, and the yakuza run away like 
cowards&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4270.nss"]

}
