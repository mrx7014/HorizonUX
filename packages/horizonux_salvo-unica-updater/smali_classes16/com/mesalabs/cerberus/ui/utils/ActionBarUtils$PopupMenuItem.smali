.class Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;
.super Ljava/lang/Object;
.source "ActionBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupMenuItem"
.end annotation


# instance fields
.field adapter:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;

.field badgeIcon:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

.field titleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;)V
    .locals 0
    .param p2, "instance"    # Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;

    .line 539
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    iput-object p2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$PopupMenuItem;->adapter:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$MoreMenuPopupAdapter;

    .line 541
    return-void
.end method
