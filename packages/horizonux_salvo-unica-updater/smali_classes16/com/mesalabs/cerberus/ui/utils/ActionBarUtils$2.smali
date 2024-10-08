.class Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$2;
.super Ljava/lang/Object;
.source "ActionBarUtils.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 244
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$2;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 248
    const/4 v0, 0x0

    return v0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$2;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$100(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 251
    const/4 v0, 0x1

    return v0
.end method
