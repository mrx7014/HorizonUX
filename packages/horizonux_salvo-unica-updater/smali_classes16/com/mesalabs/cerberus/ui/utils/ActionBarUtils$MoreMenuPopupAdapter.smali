.class Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ActionBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreMenuPopupAdapter"
.end annotation


# instance fields
.field activity:Landroidx/appcompat/app/AppCompatActivity;

.field badgeCount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field itemTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;


# direct methods
.method public constructor <init>(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;Landroidx/appcompat/app/AppCompatActivity;Ljava/util/LinkedHashMap;)V
    .locals 1
    .param p2, "instance"    # Landroidx/appcompat/app/AppCompatActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 464
    .local p3, "linkedHashMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 465
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 466
    iput-object p2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 467
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->itemTitle:Ljava/util/ArrayList;

    .line 468
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->badgeCount:Ljava/util/ArrayList;

    .line 469
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->itemTitle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 483
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->itemTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 490
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 491
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c0054

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 492
    new-instance v1, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;

    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-direct {v1, v2, p0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;-><init>(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;)V

    .line 493
    .local v1, "itemVar":Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;
    const v2, 0x7f090144

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;->titleText:Landroid/widget/TextView;

    .line 494
    const v2, 0x7f0900f5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;->badgeIcon:Landroid/widget/TextView;

    .line 495
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 497
    .end local v1    # "itemVar":Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;

    .line 500
    .restart local v1    # "itemVar":Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;
    :goto_0
    iget-object v2, v1, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;->titleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->itemTitle:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->badgeCount:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 502
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->badgeCount:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 503
    .local v2, "count":I
    const/16 v3, 0x63

    if-le v2, v3, :cond_1

    .line 504
    const/16 v2, 0x63

    .line 506
    :cond_1
    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v3}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$600(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Ljava/text/NumberFormat;

    move-result-object v3

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, "countString":Ljava/lang/String;
    iget-object v4, v1, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;->badgeIcon:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701b1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 509
    .local v4, "width":I
    iget-object v5, v1, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;->badgeIcon:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 510
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 511
    iget-object v6, v1, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;->badgeIcon:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    iget-object v6, v1, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;->badgeIcon:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    .end local v2    # "count":I
    .end local v3    # "countString":Ljava/lang/String;
    .end local v4    # "width":I
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->badgeCount:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->NEW_UPDATE_AVAILABLE:I

    if-ne v2, v3, :cond_3

    .line 514
    iget-object v2, v1, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;->badgeIcon:Landroid/widget/TextView;

    const-string v3, "N"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v2, v1, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;->badgeIcon:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 517
    :cond_3
    iget-object v0, v1, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;->badgeIcon:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    :goto_1
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_5

    .line 521
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$700(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f08008e

    goto :goto_2

    :cond_4
    const v0, 0x7f08008f

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 522
    :cond_5
    if-nez p1, :cond_7

    .line 523
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$700(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f080094

    goto :goto_3

    :cond_6
    const v0, 0x7f080095

    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 524
    :cond_7
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_9

    .line 525
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$700(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f080090

    goto :goto_4

    :cond_8
    const v0, 0x7f080091

    :goto_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 527
    :cond_9
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$700(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f080092

    goto :goto_5

    :cond_a
    const v0, 0x7f080093

    :goto_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 530
    :goto_6
    return-object p2
.end method

.method public setArrays(Ljava/util/LinkedHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 472
    .local p1, "linkedHashMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->itemTitle:Ljava/util/ArrayList;

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;->badgeCount:Ljava/util/ArrayList;

    .line 474
    return-void
.end method
