.class public Lcom/mesalabs/cerberus/ui/preference/InsetPreferenceCategory;
.super Lcom/samsung/android/ui/preference/PreferenceCategory;
.source "InsetPreferenceCategory.java"


# instance fields
.field private mHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mesalabs/cerberus/ui/preference/InsetPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mesalabs/cerberus/ui/preference/InsetPreferenceCategory;->mHeight:I

    .line 38
    if-eqz p2, :cond_0

    .line 39
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->InsetPreferenceCategory:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, "styledAttrs":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/mesalabs/cerberus/ui/preference/InsetPreferenceCategory;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/mesalabs/cerberus/ui/preference/InsetPreferenceCategory;->mHeight:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    sget-object v1, Lcom/mesalabs/ten/update/R$styleable;->SeslPreferenceCategory:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 44
    .local v1, "categoryAttrs":Landroid/content/res/TypedArray;
    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/ui/preference/InsetPreferenceCategory;->seslSetSubheaderRoundedBg(I)V

    .line 45
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    .end local v0    # "styledAttrs":Landroid/content/res/TypedArray;
    .end local v1    # "categoryAttrs":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    .line 50
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/PreferenceCategory;->onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V

    .line 51
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/mesalabs/cerberus/ui/preference/InsetPreferenceCategory;->mHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 53
    iget-object v1, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 57
    if-ltz p1, :cond_0

    .line 58
    iput p1, p0, Lcom/mesalabs/cerberus/ui/preference/InsetPreferenceCategory;->mHeight:I

    .line 60
    :cond_0
    return-void
.end method
