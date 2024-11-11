.class Landroidx/appcompat/widget/SeslAppCompatSpinner$1;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "SeslAppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/SeslAppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

.field final synthetic val$popup:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SeslAppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/appcompat/widget/SeslAppCompatSpinner;
    .param p2, "arg0"    # Landroid/view/View;

    .line 146
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$1;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iput-object p3, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$1;->val$popup:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$1;->val$popup:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$1;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$1;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->showPopup()V

    .line 158
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
