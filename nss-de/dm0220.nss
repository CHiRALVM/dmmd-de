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
	#ev022蒼葉音楽効果=true;
	#ev022蒼葉音楽効果a=true;

	#bg104001_3_蒼葉宅前通り玄関消灯=true;
	#bg210011_2_暴露海と砂浜=true;
	#bg104011_5_蒼葉宅玄関消灯=true;
	#bg209011_2_暴露蒼葉教会外観見上げ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0230.nss";

}


scene dm0220.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg104001_3_蒼葉宅前通り玄関消灯");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
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
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_蒼葉宅玄関_扉開くゆっくり01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg104011_5_蒼葉宅玄関消灯.jpg");

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


	OnBG(10,"bg104011_5_蒼葉宅玄関");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
It seems like Granny isn't home yet&, and the house is 
dark&.

{
	CreateSE("SE01","se物体_蒼葉宅照明_点灯01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵背景100", 200, null, true);
}
I turn on the lights to the dark entrance hall&, enter the
corridor&, and walk into the kitchen&. I take a pill for my
headache from the shelf and drink more water than usual&.

 The pills should technically be taken after a meal&, but my top priority is to calm down the headache&.

{
	CreateSE("SE01","se物体_蒼葉宅階段_登る通常01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
It might be because I'm relieved to be home&, but I 
suddenly feel so tired that it becomes difficult to walk&.

I want to fall asleep on the spot&, but I make my way up to 
my room on the second floor first&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	OnBG(10,"bg104031_5_蒼葉宅自室");
	FadeBG(1000,true);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
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
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/2000010a01">
"What am I doing&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
This is all because of that weird rabbit head&.

And&.&.&. Rhyme&.

Is it really worth hyping up and becoming addicted to it?

{
	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1200,null,false);
}
I slowly sit up while remembering the game-like space I 
was sent to&, and I only feel worse&.

I guess the medicine hasn't kicked in yet because the 
headache isn't going away&. I'll try something else&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,600,0,1400,null,false);

	Wait(500);

	CreateSE("SE02","se物体_ベッド_寝る01");
	MusicStart("SE02",0,600,0,1200,null,false);

	CreateTextureEX("絵ＥＶ120", 120, -957, -114, "cg/ev/l/ev022蒼葉音楽効果_l.jpg");
	CreateTextureEX("絵ＥＶ102", 102, -955, -24, "cg/ev/l/ev022蒼葉音楽効果a_l.jpg");
	CreateTextureEX("絵ＥＶ101", 101, Center, Middle, "cg/ev/ev022蒼葉音楽効果a.jpg");
	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev022蒼葉音楽効果.jpg");
	Fade("絵ＥＶ100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I take the headphones I threw together with my jacket 
and put them on&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵ＥＶ101", 800, 1000, null, true);
	Delete("絵ＥＶ100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I select my favorite music from my Coil and close my 
eyes&, leaving my body to the flowing music&.

Whenever I'm restless or feeling unwell for whatever 
reason&, this method always helps me get relaxed again&.

I become immersed in the world of me and music&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/2000020a01">
"&.&.&.Mn&."

The rhythm and tempo of the music&, my own breathing and 
heartbeat&.

They tune together little by little&, melting and 
eventually becoming one surging wave&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/2000030a01">
"Ha&, &.&.&.&.&.&."

The whirlpool of melody wraps around my body and strokes 
it softly&.

The sound permeates my skin&, mingles with my blood&, and 
flows throughout me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Move("絵ＥＶ102", 1000, -955, -114, Dxl1, false);
	Fade("絵ＥＶ102", 1000, 1000, null, true);
	Delete("絵ＥＶ101");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/2000040a01">
"&.&.&.Ah&.&.&."

Lights of all colors dance in my head like a soft film&.

It feels pleasant and I slowly calm down&. It was like 
telling myself that only I was allowed here&, that this 
is a place only for me&, and I felt peaceful&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/2000050a01">
"Ahhh&.&.&."

{
	CreateTextureEX("絵背景110", 110, 0, -556, "cg/bg/l/bg104031_5_蒼葉宅自室_l.jpg");
	Move("絵背景110", 500, 0, -572, Dxl1, false);
	Fade("絵背景110", 500, 1000, null, true);

	Delete("絵ＥＶ102");
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
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_物_鳴る01");
	MusicStart("SE01",0,450,0,2000,null,false);

	Move("絵ＥＶ120", 500, -957, -101, Dxl1, false);
	Fade("絵ＥＶ120", 500, 1000, null, true);
	Delete("絵背景110");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/2000060a01">
"&.&.&.&.&.?"

A sound&.&.&.?

I open my eyes slightly&, but with my consciousness blurry&, I can't tell what it is for sure&.

&.&.&.&.&.
&.&.&.Well&, whatever&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(2000, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I give up on thinking straight and close my eyes again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 5000, 0, null);

	ClearFadeAll(2000, true);
	CreateColorSP("絵色黒", 5000, "000000");

	Wait(1000);

	CreateColorSPadd("絵色白", 3000, "FFFFFF");

	CreateTextureSP("絵背景101", 101, Center, -766, "cg/bg/bg209011_2_暴露蒼葉教会外観見上げ.jpg");
	SetShade("絵背景101", NOMORE);
	CreateTextureSP("絵背景100", 100, -212, -559, "cg/bg/l/bg210011_2_暴露海と砂浜_l.jpg");
	SetShade("絵背景100", NOMORE);

	CreateSE("SE01","se環境_自然_波01L");
	MusicStart("SE01",4000,400,0,1000,null,true);

	Wait(1500);

	FadeDelete("絵色黒", 1500, null, true);

	Fade("絵色白", 2000, 500, null, true);

	CreateVOICE("蒼葉","dm02/2000070b01");
	MusicStart("蒼葉",5000,300,0,1000,null,true);

	CreateVOICE("蓮","dm02/2000080c03");
	MusicStart("蓮",5000,300,0,1000,null,true);

	FadeDelete("絵背景101", 1000, null, true);
	Fade("絵色白", 3000, 100, null, true);

	Wait(1500);

	SetVolumeEX("SE01", 3000, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
This place&.&.&. I've seen it before&.

I know it well&.

I sit on a sandy beach and talk with a certain person&.

I treasure what he says as if the words themselves shine&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色白", 1000, 1000, null, true);

	CreateTextureSP("絵ＥＶ200", 200, -732, -406, "cg/ev/l/evf10記憶の中の父の影_l.jpg");
	CreateTextureEXadd("絵ＥＶ201", 201, -732, -406, "cg/ev/l/evf10記憶の中の父の影_l.jpg");
	LastfireOGMIX("@絵ＥＶ201","プロセスファイヤー");

	Fade("絵色白", 2000, 100, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//※音声：音声加工をして使用（ほとんど聞こえない感じに）
//【ナイン】
<voice name="ナイン" class="ナイン" src="voice/dm02/2000090b17">
"&.&.&.&.&."

//「怖くないから、自分の世界から出ておいで」

//※音声：音声加工をして使用（ほとんど聞こえない感じに）
//【ナイン】
<voice name="ナイン" class="ナイン" src="voice/dm02/2000100b17">
"&.&.&.&.&."

//「大丈夫。世界はいつでも壊すことができるから」

//※音声：音声加工をして使用（ほとんど聞こえない感じに）
//【ナイン】
<voice name="ナイン" class="ナイン" src="voice/dm02/2000110b17">
"&.&.&.&.&."

//「壊して、そのあとにまた新たな世界を作り出せばいい。可能性に終わりなんてないんだ」
//Hihi, it's nice that the words actually are written here&. Beautiful&.

&.&.&.What did he say again?
I can't remember&.

What he said was important&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("蒼葉", 3000, 0, null);
	SetVolumeEX("蓮", 3000, 0, null);
	Fade("絵色白", 3000, 1000, null, true);

//※夢終わり

	ClearFadeAll(3000, true);

	Wait(4000);

//※次ファイル["dm0230.nss"]

}
