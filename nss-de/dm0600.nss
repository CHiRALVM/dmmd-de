//<continuation number="310">
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


scene dm0600.nss_MAIN
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
	$GameName = "dm0610.nss";

}


scene dm0600.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm001",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg102011_5_平凡店内");
	FadeBG(0,true);

	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

//==============================================
//※以降、合流
//==============================================

 //※平凡_扉ベル（レトロな鐘がカランカラン）

	Fw("fw紅雀_通常_angry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/0000010a02">
"&.&.&.Aoba!"

{	Fw("fw羽賀_通常_worry");}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm06/0000020b07">
"Aoba-kun!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
We go inside Heibon&, and both Haga-san and Koujaku leap up&,all color drained from their faces&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	St("MR",720, @0,@0,"st紅雀_通常_normal2");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/0000030a02">
"Are you okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/0000040a01">
"Sort of&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"st羽賀_通常_normal");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm06/0000050b07">
"That's good to hear&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fwAMベニ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm06/0000060b16">
"Hey&, is that dog okay too?"

{
	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm06/0000070a06">
"I'm here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Ren's head pops out of my bag and looks up to Beni&, who is perched on Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/0000080a02">
"This gas mask guy came over to me and said you were
 kidnapped!"

{
	St("C",740, @0,@0,"st紅雀_通常_sad");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/0000090a02">
"I didn't believe it at first&, but I couldn't get in
 contact with you!"

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/0000100a02">
"And when I tried to ask Tae-san&, I couldn't reach her
 either! I know she hates Coils&, but&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Koujaku looks behind me&, clearly scowling&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/0000110a02">
"Hey&, that guy&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/0000120a01">
"Ah&, um-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_angry4");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/0000130a02">
"You bastard&.&.&. You're Scratch's Head&, aren't you!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
Scratch?

Isn't that the name of a Rib team made up of prisoners?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/0000140a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw紅雀_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/0000150a02">
"You didn't even notice?"

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/0000160a01">
"No&.&.&. I never saw their tag art&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_pride2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/0000170a05">
"&.&.&.Hmph&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
Mink finds my stupidity amusing and snorts&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	DeleteAllSt(0,true);
	CreateTextureSP("絵背景100", 100, -180, -576, "cg/bg/l/bg106011_5_廃ビル広間_l.jpg");

	EfRecoIn2(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
That building was so dark and dirty that I couldn't see a  thing&, either&.&.&.

I think I remember seeing some kind of tag art there&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景15000", 15000, Center, Middle, "cg/ef/eflロゴミンクチーム.jpg");
	Fade("絵背景15000", 500, 1000, null, true);
	Delete("絵背景100");

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
Based off of appearances&, you could say that Scratch is 
just a Rib team&, but in actuality it's a gang of prisoners&.

In short&, it's a group of violent prison escapees&.

The police don't do anything&, and no one wants to mess 
with them either&.

&.&.&.So that was it&.
And those "punishments"&, too&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureSP("絵ＥＶ101", 101, 0, 0, "cg/ev/ev054ミンクぶん殴るa.jpg");
	FadeDelete("絵背景15000", 500, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0048]
Banding a mass of prisoners together isn't the easiest 
thing to do&. You'd have to have serious authority in a 
lawless place&.

Even so&, there's still discipline in the team&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("絵効果*");
	Delete("絵背景*");
	Delete("絵ＥＶ*");

	EfRecoIn2(400);

	Fw("fwAMベニ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm06/0000180b16">
"Shit&, a newcomer?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSPTate("絵マスク中", 2010);//ナット名、優先度
	CreateTextureSP("絵マスク中/絵画像", 1900, -100, -315, "cg/bg/l/bg102011_5_平凡店内_l.jpg");
	Zoom("絵マスク中/絵画像", 0, 1200, 1200, null, true);
	Request("絵マスク中/絵画像", Smoothing);

	CreateTextureSP("絵マスク中/絵立絵", 2000, 160, -50, "cg/bu/buAMトリ_通常_normal.png");
	CreateColorEX("絵マスク中/絵色黒", 1950, "000000");
	Fade("絵マスク中/絵色黒", 0, 300, null, true);

	FadeDelete("絵板写", 100, null, false);

	OpenTateMask("絵マスク中",200, 1000,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Beni glares at the cockatoo with an intensity&.

{
	CloseTateMask("絵マスク中",200,Dxl3,true);
}
It doesn't make any eye contact&, showing that it doesn't 
care in the slightest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",740, @0,@0,"st羽賀_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【羽賀】※漫符：おはな
<voice name="羽賀" class="羽賀" src="voice/dm06/0000190b07">
"What a lovely cockatoo&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNext(800,563,115,3,"st");

	St("MR",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/0000200a04">
"It is&. It's a beautiful cockatoo&."

{	ClearComicNexDelete();
	DeleteAllSt(200,true);
	Fw("fwAMベニ_通常_normal");}
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm06/0000210b16">
"Heh&, don't be fooled&. He's a bitch&, I can tell!"

{	Fw("fwAMトリ_通常_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm06/0000220b12">
"You're quite a noisy fellow&. How about you replace that
 habit of bantering with singing instead?"

{	Fw("fwAMベニ_通常_normal");}
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm06/0000230b16">
"-You! Don't you mess with me!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Beni's feathers fluff out&. Like a real bird&, his hostility is clearly visible&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/0000240a02">
"This is just great&. Running into some low-life scum&. Go
 back to your cell like a good little boy&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",730, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/0000250a05">
"You clearly don't think before you speak&."

{	Fw("fw紅雀_通常_angry4");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/0000260a02">
"Whaddya say? Why are you with Aoba? What are you trying to do here? He's got no money&." 

{	St("C",730, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/0000270a05">
"It has nothing to do with you&."

{	Fw("fw紅雀_通常_angry");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/0000280a02">
"Huh? Are you trying to start something?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
The tension between Mink and Koujaku seems pretty 
dangerous&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw羽賀_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm06/0000290b07">
"Ko-Koujaku-kun&, calm down&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/0000300a01">
"Now&, let's just go inside&. This is the entrance anyway&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",730, @0,@0,"st紅雀_通常_cranky2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/0000310a02">
"&.&.&.Tch&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 180,true);
	St("C",730, @0,@0,"stミンク_通常_normal");
	FadeSt("C",180,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
Koujaku glares at Mink and clicks his tongue&. Mink's 
expression doesn't really change&, but he keeps looking at 
Koujaku&.

{	DeleteAllSt(200,true);}
They were a lot more considerate earlier before&.&.&.

I feel a sudden wave of tiredness as we all enter the shop&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	ClearFadeAll(1000, true);

//※次ファイル["dm0610.nss"]

}
