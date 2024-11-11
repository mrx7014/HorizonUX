.class Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$3;
.super Ljava/lang/Object;
.source "ActionBarUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setMoreMenuButton(Ljava/util/LinkedHashMap;Landroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;


# direct methods
.method constructor <init>(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 380
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$3;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 383
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$3;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-virtual {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->showMoreMenuPopupWindow()V

    .line 384
    return-void
.end method
