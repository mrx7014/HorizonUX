.class public Landroidx/appcompat/widget/SeslDropDownItemTextView;
.super Lcom/samsung/android/ui/widget/SeslCheckedTextView;
.source "SeslDropDownItemTextView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SeslDropDownItemTextView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SeslDropDownItemTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 37
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SeslDropDownItemTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 7
    .param p1, "var1"    # Z

    .line 46
    invoke-super {p0, p1}, Lcom/samsung/android/ui/widget/SeslCheckedTextView;->setChecked(Z)V

    .line 47
    move v0, p1

    .line 48
    .local v0, "i":I
    const-string v1, "sec-roboto-light"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SeslDropDownItemTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 49
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslDropDownItemTextView;->getCurrentTextColor()I

    move-result v1

    const v2, -0xff01

    if-ne v1, v2, :cond_2

    .line 50
    const-string v1, "SeslDropDownItemTextView"

    const-string v2, "SeslDropDownItemTextView text color reload!!"

    invoke-static {v1, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslDropDownItemTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 52
    .local v2, "var2":Z
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslDropDownItemTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 54
    .local v3, "var3":Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 55
    const v4, 0x7f060182

    .local v4, "var4":I
    goto :goto_0

    .line 57
    .end local v4    # "var4":I
    :cond_0
    const v4, 0x7f060181

    .line 60
    .restart local v4    # "var4":I
    :goto_0
    if-eqz v3, :cond_2

    .line 61
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 62
    .local v5, "var5":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_1

    .line 63
    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/SeslDropDownItemTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 65
    :cond_1
    const-string v6, "Didn\'t set SeslDropDownItemTextView text color!!"

    invoke-static {v1, v6}, Lcom/mesalabs/ten/update/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v2    # "var2":Z
    .end local v3    # "var3":Landroid/content/Context;
    .end local v4    # "var4":I
    .end local v5    # "var5":Landroid/content/res/ColorStateList;
    :cond_2
    :goto_1
    return-void
.end method
