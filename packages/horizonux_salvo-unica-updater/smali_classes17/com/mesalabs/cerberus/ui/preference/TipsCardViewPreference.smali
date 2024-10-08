.class public Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;
.super Lcom/samsung/android/ui/preference/SeslPreference;
.source "TipsCardViewPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference$TipsCardListener;
    }
.end annotation


# instance fields
.field private mTextColor:I

.field private mTipsCardListener:Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference$TipsCardListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;->setLayoutResource(I)V

    .line 45
    const v0, 0x7f060147

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;->mTextColor:I

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;)Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference$TipsCardListener;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;

    .line 29
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;->mTipsCardListener:Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference$TipsCardListener;

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "preferenceViewHolder"    # Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    .line 50
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V

    .line 52
    iget-object v0, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object v0, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v0, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference$1;

    invoke-direct {v1, p0}, Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference$1;-><init>(Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public setTipsCardListener(Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference$TipsCardListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference$TipsCardListener;

    .line 63
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;->mTipsCardListener:Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference$TipsCardListener;

    .line 64
    return-void
.end method
