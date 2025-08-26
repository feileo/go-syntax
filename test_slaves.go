package main

import "fmt"

func main() {
	// 测试代码：s.Nodes().Slaves
	s := &Space{}

	// 这里应该触发语法高亮问题
	for _, sn := range s.Nodes().Slaves {
		fmt.Println(sn)
	}
}

type Space struct{}

func (s *Space) Nodes() *Nodes {
	return &Nodes{}
}

type Nodes struct {
	Slaves []interface{}
}
