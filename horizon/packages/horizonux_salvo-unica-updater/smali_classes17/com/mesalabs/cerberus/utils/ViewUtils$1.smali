.class Lcom/mesalabs/cerberus/utils/ViewUtils$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/cerberus/utils/ViewUtils;->updateListBothSideMargin(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/mesalabs/cerberus/utils/ViewUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/mesalabs/cerberus/utils/ViewUtils$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 341
    iget-object v0, p0, Lcom/mesalabs/cerberus/utils/ViewUtils$1;->val$activity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 342
    .local v0, "width":I
    iget-object v1, p0, Lcom/mesalabs/cerberus/utils/ViewUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 343
    .local v1, "configuration":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    const/4 v3, 0x0

    const/16 v4, 0x19b

    if-le v2, v4, :cond_5

    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x200

    if-ge v2, v4, :cond_0

    goto :goto_2

    .line 347
    :cond_0
    iget-object v2, p0, Lcom/mesalabs/cerberus/utils/ViewUtils$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v4, -0x1

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 348
    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 349
    .local v2, "screenWidthDp":I
    const/16 v4, 0x2ad

    if-lt v2, v4, :cond_2

    const/16 v4, 0x3bf

    if-le v2, v4, :cond_1

    goto :goto_0

    .line 360
    :cond_1
    int-to-float v4, v0

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 361
    .local v4, "i":I
    iget-object v5, p0, Lcom/mesalabs/cerberus/utils/ViewUtils$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4, v3, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 350
    .end local v4    # "i":I
    :cond_2
    :goto_0
    const/16 v4, 0x3c0

    if-lt v2, v4, :cond_3

    const/16 v4, 0x77f

    if-gt v2, v4, :cond_3

    .line 351
    int-to-float v4, v0

    const/high16 v5, 0x3e000000    # 0.125f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 352
    .restart local v4    # "i":I
    iget-object v5, p0, Lcom/mesalabs/cerberus/utils/ViewUtils$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4, v3, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 353
    .end local v4    # "i":I
    goto :goto_1

    :cond_3
    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v5, 0x780

    if-lt v4, v5, :cond_4

    .line 354
    int-to-float v4, v0

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 355
    .restart local v4    # "i":I
    iget-object v5, p0, Lcom/mesalabs/cerberus/utils/ViewUtils$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4, v3, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 356
    .end local v4    # "i":I
    goto :goto_1

    .line 357
    :cond_4
    iget-object v4, p0, Lcom/mesalabs/cerberus/utils/ViewUtils$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 363
    :goto_1
    return-void

    .line 344
    .end local v2    # "screenWidthDp":I
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/mesalabs/cerberus/utils/ViewUtils$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 345
    return-void
.end method
