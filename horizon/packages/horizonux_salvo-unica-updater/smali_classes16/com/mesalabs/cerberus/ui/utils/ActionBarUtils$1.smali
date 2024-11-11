.class Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$1;
.super Ljava/lang/Object;
.source "ActionBarUtils.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->initMoreMenuPopupWindow(Ljava/util/LinkedHashMap;Landroid/widget/AdapterView$OnItemClickListener;)V
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

    .line 234
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$1;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 237
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$1;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$100(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$1;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$100(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 241
    return v1

    .line 238
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
