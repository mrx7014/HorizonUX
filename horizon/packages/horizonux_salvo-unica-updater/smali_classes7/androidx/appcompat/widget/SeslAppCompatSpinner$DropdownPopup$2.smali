.class Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "SeslAppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    .line 839
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$2;->this$1:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 842
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$2;->this$1:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->computeContentWidth()V

    .line 843
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$2;->this$1:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    invoke-static {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->access$001(Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;)V

    .line 844
    return-void
.end method
