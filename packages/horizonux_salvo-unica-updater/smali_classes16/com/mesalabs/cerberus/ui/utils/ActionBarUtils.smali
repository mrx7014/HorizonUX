.class public Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;
.super Ljava/lang/Object;
.source "ActionBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;,
        Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;,
        Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;
    }
.end annotation


# static fields
.field public static NEW_UPDATE_AVAILABLE:I


# instance fields
.field private activity:Landroidx/appcompat/app/AppCompatActivity;

.field private appBarLayout:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

.field private collapsingToolbarLayout:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

.field private defaultExpandStatus:Z

.field private isNightMode:Z

.field private mAppBarHeightDp:F

.field private moreMenuPopupAdapter:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;

.field private moreMenuPopupAnchor:Landroid/view/View;

.field private moreMenuPopupOffX:I

.field private moreMenuPopupWindow:Landroid/widget/PopupWindow;

.field public moreOverflowBadgeBackground:Landroid/view/ViewGroup;

.field public moreOverflowBadgeText:Landroid/widget/TextView;

.field private moreOverflowButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

.field private moreOverflowButtonContainer:Landroid/widget/FrameLayout;

.field private numberFormat:Ljava/text/NumberFormat;

.field private overflowContainer:Landroid/widget/LinearLayout;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarHomeButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

.field private toolbarTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/4 v0, -0x1

    sput v0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->NEW_UPDATE_AVAILABLE:I

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1
    .param p1, "instance"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 72
    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupAnchor:Landroid/view/View;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->defaultExpandStatus:Z

    .line 82
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 83
    invoke-static {p1}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->isNightMode:Z

    .line 84
    return-void
.end method

.method static synthetic access$100(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->appBarLayout:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->collapsingToolbarLayout:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)F
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 51
    iget v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->mAppBarHeightDp:F

    return v0
.end method

.method static synthetic access$500(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->numberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 51
    iget-boolean v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->isNightMode:Z

    return v0
.end method

.method private getMoreMenuPopupWidth(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;)I
    .locals 9
    .param p1, "adapter"    # Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;

    .line 115
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 116
    .local v0, "makeMeasureSpec":I
    const/4 v1, 0x0

    .line 117
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    .line 118
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .line 120
    .local v3, "measuredWidth":I
    const/4 v4, 0x0

    .line 121
    .local v4, "i":I
    invoke-virtual {p1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->getCount()I

    move-result v5

    .line 123
    .local v5, "count":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 125
    invoke-virtual {p1, v4}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->getItemViewType(I)I

    move-result v6

    .line 127
    .local v6, "itemViewType":I
    if-eqz v6, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 130
    :cond_0
    if-nez v2, :cond_1

    .line 131
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v7, "linearLayout":Landroid/view/ViewGroup;
    goto :goto_1

    .line 133
    .end local v7    # "linearLayout":Landroid/view/ViewGroup;
    :cond_1
    move-object v7, v2

    .line 135
    .restart local v7    # "linearLayout":Landroid/view/ViewGroup;
    :goto_1
    invoke-virtual {p1, v4, v1, v7}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 136
    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 137
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 138
    if-gtz v3, :cond_2

    .line 139
    const/4 v3, 0x0

    .line 141
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 142
    move-object v2, v7

    .line 143
    .end local v6    # "itemViewType":I
    .end local v7    # "linearLayout":Landroid/view/ViewGroup;
    goto :goto_0

    .line 144
    :cond_3
    return v3
.end method

.method private initMoreMenuButtonBadge(I)V
    .locals 6
    .param p1, "count"    # I

    .line 257
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowBadgeBackground:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0c0053

    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->overflowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowBadgeBackground:Landroid/view/ViewGroup;

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowBadgeText:Landroid/widget/TextView;

    .line 260
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070235

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 261
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowButtonContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowBadgeText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 264
    if-lez p1, :cond_2

    .line 265
    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    .line 266
    const/16 p1, 0x63

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "countString":Ljava/lang/String;
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowBadgeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 271
    .local v2, "width":I
    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 272
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 273
    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070234

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 274
    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070233

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 275
    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 277
    .end local v0    # "countString":Ljava/lang/String;
    .end local v2    # "width":I
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_0

    :cond_2
    sget v2, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->NEW_UPDATE_AVAILABLE:I

    if-ne p1, v2, :cond_3

    .line 278
    const-string v2, "N"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowBadgeBackground:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 284
    :cond_4
    :goto_0
    return-void
.end method

.method private initMoreMenuPopupWindow(Ljava/util/LinkedHashMap;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 5
    .param p2, "ocl"    # Landroid/widget/AdapterView$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 204
    .local p1, "linkedHashMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 208
    :cond_0
    iput-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 210
    :cond_1
    new-instance v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v2, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;

    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, p0, v3, p1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;-><init>(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;Landroidx/appcompat/app/AppCompatActivity;Ljava/util/LinkedHashMap;)V

    iput-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupAdapter:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;

    .line 212
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->isNightMode:Z

    if-eqz v2, :cond_2

    const v2, 0x7f080096

    goto :goto_0

    :cond_2
    const v2, 0x7f080097

    :goto_0
    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 215
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 217
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lcom/mesalabs/cerberus/utils/ViewUtils;->isRTLMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupAdapter:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;

    invoke-direct {p0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->getMoreMenuPopupWidth(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;)I

    move-result v1

    iput v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupOffX:I

    goto :goto_1

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupAdapter:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;

    invoke-direct {p0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->getMoreMenuPopupWidth(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupOffX:I

    .line 223
    :goto_1
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 224
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupAdapter:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;

    invoke-direct {p0, v2}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->getMoreMenuPopupWidth(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 225
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 226
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x7f100321

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 227
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->isNightMode:Z

    if-eqz v3, :cond_4

    const v3, 0x7f080138

    goto :goto_2

    :cond_4
    const v3, 0x7f080137

    :goto_2
    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 229
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/mesalabs/cerberus/utils/ViewUtils;->getDIPForPX(Landroid/app/Activity;I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 230
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 231
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isClippingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 232
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 234
    :cond_5
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$1;

    invoke-direct {v2, p0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$1;-><init>(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 244
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$2;

    invoke-direct {v2, p0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$2;-><init>(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 254
    return-void
.end method


# virtual methods
.method public addOverflowButton(IILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "contentDescResId"    # I
    .param p3, "ocl"    # Landroid/view/View$OnClickListener;

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->addOverflowButton(ZIILandroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method public addOverflowButton(ZIILandroid/view/View$OnClickListener;)V
    .locals 5
    .param p1, "big"    # Z
    .param p2, "iconResId"    # I
    .param p3, "contentDescResId"    # I
    .param p4, "ocl"    # Landroid/view/View$OnClickListener;

    .line 91
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    .line 94
    new-instance v0, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, "overflowButton":Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_0

    const v3, 0x7f0700d2

    goto :goto_0

    :cond_0
    const v3, 0x7f0701a7

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07019c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 98
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    const v2, 0x7f0800cd

    invoke-virtual {v0, v2}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setBackgroundResource(I)V

    .line 99
    invoke-virtual {v0, p2}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setImageResource(I)V

    .line 100
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->isNightMode:Z

    if-eqz v3, :cond_1

    const v3, 0x7f0600e2

    goto :goto_1

    :cond_1
    const v3, 0x7f0600e1

    :goto_1
    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 101
    invoke-virtual {v0, p4}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2, p3}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setTooltipText(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->overflowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void

    .line 92
    .end local v0    # "overflowButton":Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Lcom/mesalabs/cerberus/utils/CerberusException;

    const-string v1, "Can\'t add a new Overflow button! Please make sure to add it BEFORE initializing moreMenuPopupWindow."

    invoke-direct {v0, v1}, Lcom/mesalabs/cerberus/utils/CerberusException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dismissMoreMenuPopupWindow()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dismissMoreMenuPopupWindow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "moreMenuPopupWindow is null or already hidden."

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 112
    :goto_1
    return-void
.end method

.method public getAppBarLayout()Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->appBarLayout:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    return-object v0
.end method

.method public getOverflowIcon(I)Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;
    .locals 2
    .param p1, "index"    # I

    .line 152
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->overflowContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->overflowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".getOverflowIcon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "overflowContainer is null or contains no icons."

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public initAppBar(Z)V
    .locals 3
    .param p1, "isExpanded"    # Z

    .line 161
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f090145

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 162
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 164
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->appBarLayout:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    .line 169
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f090102

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->collapsingToolbarLayout:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    .line 171
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f090147

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarHomeButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    .line 172
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f090149

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarTitle:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f090129

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->overflowContainer:Landroid/widget/LinearLayout;

    .line 175
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupAnchor:Landroid/view/View;

    .line 177
    iput-boolean p1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->defaultExpandStatus:Z

    .line 179
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->resetAppBarHeight()V

    .line 181
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->appBarLayout:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    new-instance v1, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;-><init>(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->addOnOffsetChangedListener(Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;)V

    .line 184
    return-void

    .line 183
    :cond_0
    new-instance v0, Lcom/mesalabs/cerberus/utils/CerberusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field ActionBarUtils.toolbar is null! Make sure layout in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "has been inflated."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mesalabs/cerberus/utils/CerberusException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initToolBar()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 188
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 190
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 192
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarHomeButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    .line 195
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f09014a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarTitle:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->overflowContainer:Landroid/widget/LinearLayout;

    .line 198
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupAnchor:Landroid/view/View;

    .line 201
    return-void

    .line 200
    :cond_0
    new-instance v0, Lcom/mesalabs/cerberus/utils/CerberusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field ActionBarUtils.toolbar is null! Make sure layout in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "has been inflated."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mesalabs/cerberus/utils/CerberusException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetAppBarHeight()V
    .locals 8

    .line 287
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->appBarLayout:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    if-eqz v0, :cond_3

    .line 288
    invoke-virtual {v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 289
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lcom/mesalabs/cerberus/utils/ViewUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    .line 292
    .local v1, "windowHeight":I
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2}, Lcom/mesalabs/cerberus/utils/Utils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    const v3, 0x7f07019c

    const v4, 0x7f07019d

    const v5, 0x7f07020e

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->appBarLayout:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {v2, v6, v6}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setExpanded(ZZ)V

    .line 294
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->appBarLayout:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {v2, v6}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setActivated(Z)V

    .line 296
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 297
    .local v2, "abBottomPadding":I
    iget-object v5, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->mAppBarHeightDp:F

    .line 299
    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 300
    .end local v2    # "abBottomPadding":I
    :cond_1
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2}, Lcom/mesalabs/cerberus/utils/ViewUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->appBarLayout:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {v2, v6, v6}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setExpanded(ZZ)V

    .line 302
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->appBarLayout:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {v2, v6}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setActivated(Z)V

    .line 304
    const/4 v2, 0x0

    .line 305
    .restart local v2    # "abBottomPadding":I
    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->mAppBarHeightDp:F

    .line 307
    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 309
    .end local v2    # "abBottomPadding":I
    :cond_2
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->appBarLayout:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    iget-boolean v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->defaultExpandStatus:Z

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setExpanded(ZZ)V

    .line 310
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->appBarLayout:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setActivated(Z)V

    .line 312
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 313
    .restart local v2    # "abBottomPadding":I
    iget-object v5, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->mAppBarHeightDp:F

    .line 315
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 316
    .local v4, "outValue":Landroid/util/TypedValue;
    iget-object v5, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0701b0

    invoke-virtual {v5, v7, v4, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 318
    int-to-float v3, v1

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 321
    .end local v4    # "outValue":Landroid/util/TypedValue;
    :goto_1
    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->appBarLayout:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {v3, v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->appBarLayout:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {v3, v6, v6, v6, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setPadding(IIII)V

    .line 323
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "windowHeight":I
    .end local v2    # "abBottomPadding":I
    goto :goto_2

    .line 324
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".resetAppBarHeight"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appBarLayout is null."

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_2
    return-void
.end method

.method public setHomeAsUpButton(IILandroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "iconResId"    # I
    .param p2, "contentDescResId"    # I
    .param p3, "ocl"    # Landroid/view/View$OnClickListener;

    .line 338
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarHomeButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    if-eqz v0, :cond_4

    .line 339
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/appcompat/widget/Toolbar;->setPadding(IIII)V

    .line 343
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarHomeButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setBackgroundResource(I)V

    .line 345
    if-lez p1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarHomeButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    invoke-virtual {v0, p1}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setImageResource(I)V

    goto :goto_1

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarHomeButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    iget-boolean v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->isNightMode:Z

    if-eqz v1, :cond_1

    const v1, 0x7f08010c

    goto :goto_0

    :cond_1
    const v1, 0x7f08010d

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setImageResource(I)V

    .line 350
    :goto_1
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarHomeButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->isNightMode:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0600e2

    goto :goto_2

    :cond_2
    const v2, 0x7f0600e1

    :goto_2
    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 354
    if-lez p2, :cond_3

    .line 355
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "contentDescription":Ljava/lang/String;
    goto :goto_3

    .line 357
    .end local v0    # "contentDescription":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f0f00ea

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    .restart local v0    # "contentDescription":Ljava/lang/String;
    :goto_3
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarHomeButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    invoke-virtual {v1, p3}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarHomeButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    invoke-virtual {v1, v0}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setTooltipText(Ljava/lang/String;)V

    .line 362
    .end local v0    # "contentDescription":Ljava/lang/String;
    nop

    .line 364
    return-void

    .line 363
    :cond_4
    new-instance v0, Lcom/mesalabs/cerberus/utils/CerberusException;

    const-string v1, "ActionBarUtils: Can\'t add Home button: AppBar/Toolbar hasn\'t been initialized yet!"

    invoke-direct {v0, v1}, Lcom/mesalabs/cerberus/utils/CerberusException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHomeAsUpButton(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "ocl"    # Landroid/view/View$OnClickListener;

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setHomeAsUpButton(IILandroid/view/View$OnClickListener;)V

    .line 330
    return-void
.end method

.method public setHomeAsUpButtonVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .line 333
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarHomeButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07019a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2, v1, v1, v1}, Landroidx/appcompat/widget/Toolbar;->setPaddingRelative(IIII)V

    .line 335
    return-void
.end method

.method public setMoreMenuButton(Ljava/util/LinkedHashMap;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 6
    .param p2, "ocl"    # Landroid/widget/AdapterView$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 367
    .local p1, "linkedHashMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    if-nez v0, :cond_2

    .line 368
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowButtonContainer:Landroid/widget/FrameLayout;

    .line 369
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 370
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->overflowContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    new-instance v1, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v1, v2}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    .line 374
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 375
    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07019c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 377
    .local v1, "lp2":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    const v3, 0x7f0800cd

    invoke-virtual {v2, v3}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setBackgroundResource(I)V

    .line 378
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    iget-boolean v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->isNightMode:Z

    if-eqz v3, :cond_0

    const v3, 0x7f080116

    goto :goto_0

    :cond_0
    const v3, 0x7f080117

    :goto_0
    invoke-virtual {v2, v3}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setImageResource(I)V

    .line 379
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->isNightMode:Z

    if-eqz v4, :cond_1

    const v4, 0x7f0600e2

    goto :goto_1

    :cond_1
    const v4, 0x7f0600e1

    :goto_1
    iget-object v5, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 380
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    new-instance v3, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$3;

    invoke-direct {v3, p0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$3;-><init>(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)V

    invoke-virtual {v2, v3}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const v4, 0x7f0f00eb

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setTooltipText(Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowButtonContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreOverflowButton:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "lp2":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 392
    .local v1, "i":I
    if-eqz v1, :cond_3

    .line 393
    invoke-direct {p0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->initMoreMenuButtonBadge(I)V

    .line 394
    goto :goto_3

    .line 396
    .end local v1    # "i":I
    :cond_3
    goto :goto_2

    .line 398
    :cond_4
    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->initMoreMenuPopupWindow(Ljava/util/LinkedHashMap;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 399
    return-void
.end method

.method public setSubtitleText(Ljava/lang/String;)V
    .locals 2
    .param p1, "subtitleText"    # Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->collapsingToolbarLayout:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ActionBarUtils.setSubtitleText"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "collapsingToolbarLayout is null."

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :goto_0
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 2
    .param p1, "titleText"    # Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->collapsingToolbarLayout:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    return-void

    .line 414
    :cond_1
    new-instance v0, Lcom/mesalabs/cerberus/utils/CerberusException;

    const-string v1, "ActionBarUtils: Can\'t set title text: AppBar/Toolbar hasn\'t been initialized yet!"

    invoke-direct {v0, v1}, Lcom/mesalabs/cerberus/utils/CerberusException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitleText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bigTitleText"    # Ljava/lang/String;
    .param p2, "smallTitleText"    # Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->collapsingToolbarLayout:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->toolbarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    return-void

    .line 422
    :cond_0
    new-instance v0, Lcom/mesalabs/cerberus/utils/CerberusException;

    const-string v1, "ActionBarUtils: Can\'t set title text: AppBar/Toolbar hasn\'t been initialized yet!"

    invoke-direct {v0, v1}, Lcom/mesalabs/cerberus/utils/CerberusException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showMoreMenuPopupWindow()V
    .locals 4

    .line 426
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".showMoreMenuPopupWindow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "moreMenuPopupWindow is null or already shown."

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 427
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupAnchor:Landroid/view/View;

    iget v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->moreMenuPopupOffX:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 430
    :goto_1
    return-void
.end method
