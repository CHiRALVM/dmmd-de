//<continuation number="10">
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


scene dm1462.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	//#ev900もう１人の蒼葉=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1463ed.nss";

}


scene dm1462.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

//	OnBG(10,"bg101011_1_旧住民区通り表");
//	FadeBG(0,true);
	CreateColorSP("絵色黒", 50, "000000");

	FadeDelete("上背景", 2000, null, true);

//※演出：画面が暗いまま、以下を表示



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.And then we returned back to reality&.

But&, because I failed with Scrap&, Koujaku&.&.&.

He ended up losing his mind&.

Koujaku's sense was completely eaten away by Ryuuhou's 
tattoo&, and was confined in a cell underneath Platinum 
Jail after being caught by Toue's people&.

If they were to leave him alone&, he would have gone on a 
killing rampage&.

&.&.&.Why did it have to come to this?

&.&.&.I know&. <k>It's my fault&.

If I hadn't failed with Scrap&, then&.&.&.

Whenever I think of Koujaku&, I feel like my chest will 
split open&.

Because of me&, he&.&.&.

&.&.&.&.&.

I&.&.&.&.&.&.&.

&.&.&.&.&.

&.&.&.&.&.&.&.

&.&.&.&.&.I&.&.&.&.&.

&.&.&.&.&.&.&.&.&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	SoundPlay("@dm015",0,450,true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
Rapidly&.&.&. my will weakens&.

Something stronger&, someone else is swallowing up my 
consciousness&.

It's&.&.&. the voice that's been whispering to me all this 
time&.

Destroy&, destroy&.

That was him&.

But&.&.&. I don't have the power to fight against him anymore&.

Slowly&, everything goes black&.&.&.

Slowly&.&.&.

&.&.&.&.&.

&.&.&.&.&.&.&.

&.&.&.&.&.&.&.

　…{Wait(200);}…{Wait(200);}…{Wait(300);}…{Wait(400);}…{Wait(500);}…{Wait(750);}…{Wait(1000);}…

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//※ここで数秒の間を置く（蒼葉の人格消滅→黒蒼葉と入れ替わる）
	Wait(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
It's my fault for not being able to save Koujaku&.

&.&.&.Well&, that's what I used to think&.

I thought about it practically&.

But now&.&.&.

I'm completely different&.

I'm 'the new me'&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm017",0,450,true);

//※演出：白蒼葉表示
	CreateTextureEX("絵ＥＶ101", 101, Center, Middle, "cg/ev/l/ev900もう１人の蒼葉_l.jpg");
	CreateTextureEX("絵ＥＶ100", 100, -318, -187, "cg/ev/l/ev900もう１人の蒼葉_l.jpg");
	Zoom("絵ＥＶ100", 0, 2000, 2000, null, true);
	Zoom("絵ＥＶ101", 0, 1500, 1500, null, false);
	Request("絵ＥＶ100", Smoothing);
	Request("絵ＥＶ101", Smoothing);
	SetBlur("絵ＥＶ101", true, 2, 300, 1000, false);

	Move("絵ＥＶ100", 10000, -318, -91, Dxl1, false);
	Fade("絵ＥＶ100", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I am&.&.&.

In other words&, Aoba's "Desire"&.

Always held down by his "Sense"&.

But as a result of Aoba using his power Scrap more and 
more&, I became more powerful as well&.

At last&, his "Sense" is gone&.
I have control over him&, just like Koujaku's tattoo over 
himself&.

When Aoba failed to use Scrap correctly on Koujaku&, Aoba's 
"Sense" rapidly crumbled and I came to the surface&.

I only desire one thing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Move("絵ＥＶ100", 1000, -318, 28, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Destruction&.
To destroy everything&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Move("絵ＥＶ100", 1000, -318, 128, Axl3, false);


	MoveFTP1("@絵ＥＶ101",20000,10,8);
	Zoom("絵ＥＶ101", 20000, 1400, 1400, null, false);
	Fade("絵ＥＶ101", 1000, 1000, Axl3, true);
	Delete("絵ＥＶ100");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I want to destroy&. I want to destroy&. I want to destroy&. 
I'd do anything to fufill that wish&.

For it is my only one&.

Koujaku's heart is eaten away&, but I think that's all 
right now&.

A form of pure instinct&, held back by nothing&.
That's a way of life to live&.

&.&.&.Just like I am&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	Fade("絵ＥＶ*", 250, 0, null, true);
	MoveFTP1stop();
	Delete("絵ＥＶ*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6200010a01">
"Ahahahahaha!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(2000, true);

//※次ファイル["dm1463ed.nss"]

}
