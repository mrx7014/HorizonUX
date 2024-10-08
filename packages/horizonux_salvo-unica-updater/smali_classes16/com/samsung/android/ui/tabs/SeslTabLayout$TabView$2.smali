.class Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$2;
.super Ljava/lang/Object;
.source "SeslTabLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

.field final synthetic val$var1:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1861
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$2;->this$1:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iput-object p2, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$2;->val$var1:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "var1x"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .param p7, "var7"    # I
    .param p8, "var8"    # I
    .param p9, "var9"    # I

    .line 1864
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$2;->val$var1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$2;->this$1:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$2;->val$var1:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    .line 1868
    :cond_0
    return-void
.end method
