.class public Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;
.super Lcom/samsung/android/ui/preference/SeslPreference;
.source "LayoutPreference.java"


# instance fields
.field private mAllowDividerAbove:Z

.field private mAllowDividerBelow:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mDescendantFocusability:I

.field private mIsRelativeLinkView:Z

.field mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference$1;

    invoke-direct {v0, p0}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference$1;-><init>(Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mIsRelativeLinkView:Z

    .line 50
    const/4 v1, -0x1

    iput v1, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mDescendantFocusability:I

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference$2;

    invoke-direct {v0, p0}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference$2;-><init>(Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mIsRelativeLinkView:Z

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mDescendantFocusability:I

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    new-instance v0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference$5;

    invoke-direct {v0, p0}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference$5;-><init>(Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mIsRelativeLinkView:Z

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mDescendantFocusability:I

    .line 114
    invoke-direct {p0, p2}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->setView(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "descendantFocusability"    # I

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance v0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference$4;

    invoke-direct {v0, p0}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference$4;-><init>(Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mIsRelativeLinkView:Z

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mDescendantFocusability:I

    .line 99
    invoke-direct {p0, p2}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->setView(Landroid/view/View;)V

    .line 100
    iput p3, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mDescendantFocusability:I

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isRelativeLinkView"    # Z

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference$3;

    invoke-direct {v0, p0}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference$3;-><init>(Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mIsRelativeLinkView:Z

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mDescendantFocusability:I

    .line 84
    invoke-direct {p0, p2}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->setView(Landroid/view/View;)V

    .line 85
    iput-boolean p3, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mIsRelativeLinkView:Z

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;
    .param p1, "x1"    # Landroid/view/View;

    .line 33
    invoke-virtual {p0, p1}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->performClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;
    .param p1, "x1"    # Landroid/view/View;

    .line 33
    invoke-virtual {p0, p1}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->performClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;
    .param p1, "x1"    # Landroid/view/View;

    .line 33
    invoke-virtual {p0, p1}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->performClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;
    .param p1, "x1"    # Landroid/view/View;

    .line 33
    invoke-virtual {p0, p1}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->performClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;
    .param p1, "x1"    # Landroid/view/View;

    .line 33
    invoke-virtual {p0, p1}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->performClick(Landroid/view/View;)V

    return-void
.end method

.method private forceCustomPadding(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "additive"    # Z

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 148
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f07024d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 149
    .local v1, "paddingSide":I
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v3, v1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    add-int/2addr v4, v1

    const v5, 0x7f0700c6

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 150
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 118
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->SeslPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mAllowDividerAbove:Z

    .line 120
    const/16 v1, 0x11

    invoke-static {v0, v1, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mAllowDividerBelow:Z

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    sget-object v1, Lcom/mesalabs/ten/update/R$styleable;->SeslPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 126
    .local v1, "layoutResource":I
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->setView(Landroid/view/View;)V

    .line 132
    return-void

    .line 127
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "LayoutPreference requires a layout to be defined"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 135
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->setLayoutResource(I)V

    .line 137
    const v0, 0x7f0900ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 138
    .local v0, "allDetails":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 139
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->forceCustomPadding(Landroid/view/View;Z)V

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mRootView:Landroid/view/View;

    .line 143
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->setShouldDisableView(Z)V

    .line 144
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isRelativeLinkView()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mIsRelativeLinkView:Z

    return v0
.end method

.method public onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "holder"    # Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    .line 154
    iget-boolean v0, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mIsRelativeLinkView:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 157
    iget-object v0, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->isSelectable()Z

    move-result v0

    .line 161
    .local v0, "selectable":Z
    iget-object v1, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 162
    iget-object v1, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 163
    iget-boolean v1, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 164
    iget-boolean v1, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 167
    .end local v0    # "selectable":Z
    :goto_0
    iget-object v0, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 168
    .local v0, "layout":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 170
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 171
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 172
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 176
    iget v2, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mDescendantFocusability:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 177
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 179
    :cond_2
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 0
    .param p1, "descendantFocusability"    # I

    .line 186
    iput p1, p0, Lcom/mesalabs/cerberus/ui/preference/LayoutPreference;->mDescendantFocusability:I

    .line 187
    return-void
.end method
